import tkinter as tk
import math
import random
import serial

class SonarGUI:
    def __init__(self, master):
        self.master = master
        master.title("Sonar GUI")

        self.canvas = tk.Canvas(master, width=800, height=800)  # Scale canvas size
        self.canvas.pack()

        self.turret = self.canvas.create_rectangle(370, 370, 430, 430, fill="gray")  # Turret base, scaled
        self.sonar1 = self.canvas.create_line(400, 400, 400, 200, fill="blue", width=4)  # Sonar 1, scaled
        self.sonar2 = self.canvas.create_line(400, 400, 400, 600, fill="red", width=4)   # Sonar 2, scaled

        self.draw_polar_grid()

        self.angle = 0
        self.rotation_direction = 1  # Initially rotate forward
        self.update_turret()

        # Configure the serial port
        self.ser = serial.Serial(
            port='COM14',    # Update this with your COM port
            baudrate=115200,  # Update this with the baud rate of your UART device
            timeout=1       # Timeout for read operation
        )

        # Open the serial port
        #self.ser.open()

        # Create a label to display received data
        self.received_data_label = tk.Label(master, text="Received Data: ")
        self.received_data_label.pack()

        self.read_serial_data()

    def draw_polar_grid(self):
        for angle in range(0, 360, 15):
            angle_radians = math.radians(-angle + 90)  # Adjust the angle to start from the top and go clockwise
            x1 = 400 + 200 * math.sin(angle_radians)  # Scale coordinates
            y1 = 400 - 200 * math.cos(angle_radians)  # Scale coordinates
            x2 = 400 - 200 * math.sin(angle_radians)  # Scale coordinates
            y2 = 400 + 200 * math.cos(angle_radians)  # Scale coordinates
            self.canvas.create_line(x1, y1, x2, y2, fill="black", dash=(3, 3))

            # Add degree labels
            label_x = 400 + 220 * math.sin(angle_radians)
            label_y = 400 - 220 * math.cos(angle_radians)
            self.canvas.create_text(label_x, label_y, text=str(angle) + "°", fill="black")

        # Add circles expanding from the center
        for r in range(50, 201, 50):
            self.canvas.create_oval(400 - r, 400 - r, 400 + r, 400 + r, outline="black", dash=(3, 3))

    def update_turret(self):
        # Check if the turret reached its maximum angle, if so, start rotating back
        if self.angle >= 180:
            self.rotation_direction = -1
        # Check if the turret reached its minimum angle, if so, start rotating forward
        elif self.angle <= 0:
            self.rotation_direction = 1
        
        # Update the angle based on the rotation direction
        self.angle += self.rotation_direction  # Constant rotation rate
        
        angle_radians = math.radians(self.angle)
        x1 = 400 + 200 * math.sin(angle_radians)  # Scale coordinates
        y1 = 400 - 200 * math.cos(angle_radians)  # Scale coordinates
        x2 = 400 - 200 * math.sin(angle_radians)  # Scale coordinates
        y2 = 400 + 200 * math.cos(angle_radians)  # Scale coordinates

        self.canvas.coords(self.sonar1, 400, 400, x1, y1)  # Scale coordinates
        self.canvas.coords(self.sonar2, 400, 400, x2, y2)  # Scale coordinates

        self.master.after(50, self.update_turret)  # Call update_turret every 50 milliseconds for smooth rotation

    def read_serial_data(self):
        try:
            while True:
                # Read a line from the serial port
                line = self.ser.readline().decode('utf-8').strip()
                #print("Received:", line)
                
                # Split the line into individual values
                values = line.split(',')
                print(values)
                
                if len(values) == 3:
                    # Extract distance values and servo angle
                    distance1 = int(values[0])
                    distance2 = int(values[1])
                    servo_angle = int(values[2])

                    # Print the extracted values
                    #print("Distance 1:", distance1)
                    #print("Distance 2:", distance2)
                    #print("Servo Angle:", servo_angle)

                    # Update the label with received data
                    self.received_data_label.config(text="Received Data: " + line)
                    #self.master.after(1000, self.print_received_data, distance1, distance2, servo_angle)

        except KeyboardInterrupt:
            # Close the serial port when the program is interrupted
            self.ser.close()

root = tk.Tk()
gui = SonarGUI(root)

plot_button = tk.Button(root, text="Plot")
plot_button.pack()

root.mainloop()

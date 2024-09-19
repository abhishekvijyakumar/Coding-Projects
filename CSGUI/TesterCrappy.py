import tkinter as tk
import math
import random
import serial

class SonarGUI:
    def __init__(self, master):
        self.master = master
        master.title("Sonar GUI")

        # Configure the serial port
        self.ser = serial.Serial(
            port='COM14',    # Update this with your COM port
            baudrate=115200,  # Update this with the baud rate of your UART device
            timeout=1       # Timeout for read operation
        )

        # Open the serial port
        #self.ser.open()

        self.canvas = tk.Canvas(master, width=800, height=800)  # Scale canvas size
        self.canvas.pack()

        self.turret = self.canvas.create_rectangle(370, 370, 430, 430, fill="gray")  # Turret base, scaled
        self.sonar1 = self.canvas.create_line(400, 400, 400, 200, fill="blue", width=4)  # Sonar 1, scaled
        self.sonar2 = self.canvas.create_line(400, 400, 400, 600, fill="red", width=4)   # Sonar 2, scaled

        self.draw_polar_grid()

        # Create a label to display received data
        self.received_data_label = tk.Label(master, text="Received Data: ")
        self.received_data_label.pack()
        cock, balls, torture = self.read_serial_data()
        
        self.angle = 0
        self.rotation_direction = 1  # Initially rotate forward
        #self.update_turret(torture-36)        

        
    def main(self):
        cock, balls, torture = self.read_serial_data()
        self.update_turret(torture-36)
        self.draw_polar_grid()

        # Schedule the main method to run again after a delay
        self.master.after(100, self.main)

    def draw_polar_grid(self):
        self.canvas.delete("grid")  # Clear existing grid
        for angle in range(0, 360, 15):
            angle_radians = math.radians(-angle + 90)  # Adjust the angle to start from the top and go clockwise
            x1 = 400 + 200 * math.sin(angle_radians)  # Scale coordinates
            y1 = 400 - 200 * math.cos(angle_radians)  # Scale coordinates
            x2 = 400 - 200 * math.sin(angle_radians)  # Scale coordinates
            y2 = 400 + 200 * math.cos(angle_radians)  # Scale coordinates
            self.canvas.create_line(x1, y1, x2, y2, fill="black", dash=(3, 3), tags="grid")

            # Add degree labels
            label_x = 400 + 220 * math.sin(angle_radians)
            label_y = 400 - 220 * math.cos(angle_radians)
            self.canvas.create_text(label_x, label_y, text=str(angle) + "°", fill="black")

        # Add circles expanding from the center
        for r in range(50, 201, 50):
            self.canvas.create_oval(400 - r, 400 - r, 400 + r, 400 + r, outline="black", dash=(3, 3), tags="grid")

    def update_turret(self, servo_angle):
        # Update the angle based on the servo angle received
        self.angle = servo_angle

        # Convert the angle to radians
        angle_radians = math.radians(self.angle)

        # Calculate the new coordinates for the sonar lines
        x1 = 400 + 200 * math.sin(angle_radians)  # Scale coordinates
        y1 = 400 - 200 * math.cos(angle_radians)  # Scale coordinates
        x2 = 400 - 200 * math.sin(angle_radians)  # Scale coordinates
        y2 = 400 + 200 * math.cos(angle_radians)  # Scale coordinates

        # Update the position of the sonar lines on the canvas
        self.canvas.coords(self.sonar1, 400, 400, x1, y1)  # Scale coordinates
        self.canvas.coords(self.sonar2, 400, 400, x2, y2)  # Scale coordinates


    def read_serial_data(self):
        try:
            # Read a line from the serial port
            line = self.ser.readline().decode('utf-8').strip()
                    
            # Split the line into individual values
            values = line.split(',')
                    
            if len(values) == 3:
                # Extract distance values and servo angle
                distance1 = int(values[0])
                distance2 = int(values[1])
                servo_angle = int(values[2])-35

                # Update the label with received data
                self.received_data_label.config(text="Received Data: " + line)

        except KeyboardInterrupt:
            # Close the serial port when the program is interrupted
            self.ser.close()

        return distance1, distance2, servo_angle

root = tk.Tk()
gui = SonarGUI(root)
gui.main()  # Start the main loop

root.mainloop()

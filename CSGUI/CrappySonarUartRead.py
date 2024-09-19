import serial

# Configure the serial port
ser = serial.Serial(
    port='COM4',    # Update this with your COM port
    baudrate=115200,  # Update this with the baud rate of your UART device
    timeout=1       # Timeout for read operation
)

# Open the serial port
#ser.open()

try:
    while True:
        # Read a line from the serial port
        line = ser.readline().decode('utf-8').strip()
        
        # Print the received data
        print("Received:", line)

except KeyboardInterrupt:
    # Close the serial port when the program is interrupted
    ser.close()

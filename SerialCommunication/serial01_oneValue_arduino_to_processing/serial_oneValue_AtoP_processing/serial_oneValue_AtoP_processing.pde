// IMA NYU Shanghai
// Interaction Lab


import processing.serial.*;


Serial myPort;
int valueFromArduino;


void setup() {
  size(500, 500);
  background(0);

  printArray(Serial.list());
  // this prints out the list of all available serial ports on your computer.
  
  myPort = new Serial(this, Serial.list()[ PORT_INDEX ], 9600);
  // WARNING!
  // You will definitely get an error here.
  // Change the PORT_INDEX to 0 and try running it again.
  // And then, check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index number of the port.
}


void draw() {
  // to read the value from the Arduino
  while ( myPort.available() > 0) {
    valueFromArduino = myPort.read();
  }
  // println(valueFromArduino);
  
  // add your code here
}
import processing.serial.*;

Serial myPort;
int valueFromArduino;


void setup() {
  size(500, 500);
  background(0);

  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[ PORT_INDEX ], 9600);
  // check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index of the port
}


void draw() {
  
  // to read the value from the Arduino
  while ( myPort.available() > 0) {
    valueFromArduino = myPort.read();
  }
  println(valueFromArduino);
 
  
  // to send a value to the Arduino
  if (mousePressed) {
    myPort.write('H');
  } else {
    myPort.write('L');
  }
  
}
// IMA NYU Shanghai
// Interaction Lab


import processing.serial.*;
import cc.arduino.*;


Arduino myArduino;

int analogInputPin = 0;


void setup() {
  size(300, 300);

  printArray(Arduino.list());
  myArduino = new Arduino(this, Arduino.list()[PORT_INDEX], 57600);
  // check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index of the port

  myArduino.pinMode(analogInputPin, Arduino.INPUT);
}


void draw() {
  background(0);

  int sensorValue = myArduino.analogRead(analogInputPin);
  println( sensorValue );
  float mappedValue = map(sensorValue, 0, 1023, 0, 255);
  background(mappedValue, 0, 0);

  text(sensorValue, 10, 20);
  text(mappedValue, 10, 45);
}
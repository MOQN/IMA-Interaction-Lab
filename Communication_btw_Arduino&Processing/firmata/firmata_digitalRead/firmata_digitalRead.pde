import processing.serial.*;
import cc.arduino.*;


Arduino myArduino;

int inputPin = 2;


void setup() {
  size(300, 300);
  
  printArray(Arduino.list());
  myArduino = new Arduino(this, Arduino.list()[PORT_INDEX], 57600);
  // check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index of the port
  
  myArduino.pinMode(inputPin, Arduino.INPUT);
}


void draw() {
  background(0);
  
  println( myArduino.digitalRead(inputPin) );
  if (myArduino.digitalRead(inputPin) == Arduino.HIGH) {
    background(255,0,0);
  } else {
    background(0);
  }
  
}
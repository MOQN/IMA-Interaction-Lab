// IMA NYU Shanghai
// Interaction Lab


import processing.serial.*;
import cc.arduino.*;

Arduino myArduino;

int ledPin = 13;

void setup() {
  size(300, 300);
  
  printArray(Arduino.list());
  myArduino = new Arduino(this, Arduino.list()[PORT_INDEX], 57600);
  // check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index of the port
  

  myArduino.pinMode(ledPin, Arduino.OUTPUT);
}

void draw() {
  if (mousePressed) {
    myArduino.digitalWrite(ledPin, Arduino.HIGH);
  } else {
    myArduino.digitalWrite(ledPin, Arduino.LOW);
  }
}
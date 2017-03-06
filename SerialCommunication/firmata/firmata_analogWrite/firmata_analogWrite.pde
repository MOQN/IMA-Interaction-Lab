// IMA NYU Shanghai
// Interaction Lab


import processing.serial.*;
import cc.arduino.*;


Arduino myArduino;

int pwmPin = 11;
int brightness;


void setup() {
  size(510, 300);
  
  printArray(Arduino.list());
  myArduino = new Arduino(this, Arduino.list()[PORT_INDEX], 57600);
  // check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index of the port
  
  myArduino.pinMode(pwmPin, Arduino.OUTPUT);
}


void draw() {
  background(0);
  
  if (mousePressed) {
    brightness = int( constrain(mouseX/2, 0, 255) );
    myArduino.analogWrite(11, brightness);
  } else {
    myArduino.analogWrite(11, 0);
  }
  
  text("Drag your mouse to change the brightness of the LED.", 10, 20);
  text("Brightness: " + brightness, 10, 45);
}
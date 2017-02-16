// IMA NYU Shanghai
// Interaction Lab
// Nov 26 2016
// MOQN
// jh.moon@nyu.edu


/**
 * This example is to send multiple values from Processing to Arduino.
 * You can find the arduino example file in the same folder which works with this Processing file.
 * please note that the echo
 **/


import processing.serial.*;

int NUM_OF_VALUES = 10;  /** YOU MUST CHANGE THIS ACCORDING TO YOUR PROJECT **/


Serial myPort;
String myString;

// This is the array of values you might want to send to Arduino.
int values[] = new int[NUM_OF_VALUES];

void setup() {
  size(500, 500);
  background(0);

  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[ PORT_INDEX ], 9600);
  // check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index of the port

  myPort.clear();
  // Throw out the first reading,
  // in case we started reading in the middle of a string from the sender.
  myString = myPort.readStringUntil( 10 );  // 10 = '\n'  Linefeed in ASCII
  myString = null;
}


void draw() {
  background(0);

  // changes the values
  for (int i=0; i<values.length; i++) {
    values[i] = i;  /** Feel free to change!! **/
  }

  // sends the values to Arduino.
  sendSerialData();

  // This causess the communication slow and unstable.
  // You might want to comment out when everything get ready.
  // The parameter 20 is the frequency of echoing. The higher the slower, but the higher the more stable 
  echoSerialData(20);
}




















void sendSerialData() {
  String data = "";
  for (int i=0; i<values.length; i++) {
    data += values[i];
    if (i < values.length-1) {
      data += ","; // splitter
    } else {
      data += "n"; // the end of data
    }
  }
  myPort.write(data);
}


void echoSerialData(int frequency) {
  if (frameCount % frequency == 0) myPort.write('e');

  String incomingBytes = "";
  while (myPort.available() > 0) {
    incomingBytes += char(myPort.read());
  }
  print( incomingBytes );
}
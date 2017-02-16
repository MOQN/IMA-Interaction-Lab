// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Oct 12 2016

// Based on the readStringUntil() example by Tom Igoe
// https://processing.org/reference/libraries/serial/Serial_readStringUntil_.html


import processing.serial.*;

String myString = null;
Serial myPort;


int NUM_OF_VALUES = 3;   // *** CHANGE THIS *** //
int[] sensorValues; // *** this array stores values from Arduino *** //


void setup() {
  size(500, 500);
  background(0);
  
  setupSerial();
}


void draw() {
  updateSerial();
  printArray(sensorValues);

  // use the values like this!
  // sensorValues[0] 

  // add your code

  //
}



void setupSerial() {
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[ PORT_INDEX ], 9600);
  // change PORT_INDEX to 0 and run.
  // Then check the list of the ports.
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index of the port

  myPort.clear();
  // Throw out the first reading,
  // in case we started reading in the middle of a string from the sender.
  myString = myPort.readStringUntil( 10 );  // 10 = '\n'  Linefeed in ASCII
  myString = null;

  sensorValues = new int[NUM_OF_VALUES];
}



void updateSerial() {
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil( 10 ); // 10 = '\n'  Linefeed in ASCII
    if (myString != null) {
      String[] serialInArray = split(trim(myString), ",");
      if (serialInArray.length == NUM_OF_VALUES) {
        for (int i=0; i<serialInArray.length; i++) {
          sensorValues[i] = int(serialInArray[i]);
        }
      }
    }
  }
}



/* Copy and paste this code into your Arduino sketch!
 
 void setup() {
 Serial.begin(9600);
 }
 
 void loop() {
 int sensor1 = analogRead(A0);
 int sensor2 = analogRead(A1);
 int sensor3 = analogRead(A2);
 
 Serial.print(sensor1);
 Serial.print(",");
 Serial.print(sensor2);
 Serial.print(",");
 Serial.print(sensor3);
 Serial.println();
 
 delay(1);
 }
 
 */
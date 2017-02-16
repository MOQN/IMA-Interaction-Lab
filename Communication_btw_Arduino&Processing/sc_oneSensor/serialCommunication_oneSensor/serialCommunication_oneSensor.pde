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

  // add your code here
}



/* Copy and paste this code into your Arduino sketch!

void setup() {
  Serial.begin(9600);
}

void loop() {
  int sensor = analogRead(A0);
  Serial.write(sensor);
  
  delay(10);
}

*/
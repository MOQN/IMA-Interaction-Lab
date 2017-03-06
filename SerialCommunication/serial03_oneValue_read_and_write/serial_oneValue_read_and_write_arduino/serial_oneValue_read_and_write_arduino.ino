// IMA NYU Shanghai
// Interaction Lab


int valueFromProcessing;
int ledPin = 13;


void setup() {
  Serial.begin(9600);

  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, INPUT);
}


void loop() {
  // check the differences between these two
  //Serial.println(100);
  //Serial.write(100);


  // to send a value to Processing
  int value = analogRead(A0);
  Serial.write(value);


  // to receive a value from Processing
  while (Serial.available()) {
    valueFromProcessing = Serial.read();
  }
  if (valueFromProcessing == 'H') {
    digitalWrite(ledPin, HIGH);
  } else {
    digitalWrite(ledPin, LOW);
  }
  

  // too fast communication might cause some latency in Processing
  // this delay resolves the issue.
  delay(10);
}

// IMA NYU Shanghai
// Interaction Lab


int valueFromProcessing;
int ledPin = 13;


void setup() {
  Serial.begin(9600);

  pinMode(ledPin, OUTPUT);
}


void loop() {
  // check the difference between these two
  //Serial.println(100);  // send three letters(1,0,0) as ASCII code in three bytes
  //Serial.write(100);    // send a number(100) in one byte


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

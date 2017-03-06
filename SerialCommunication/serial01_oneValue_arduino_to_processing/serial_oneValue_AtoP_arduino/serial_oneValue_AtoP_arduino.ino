// IMA NYU Shanghai
// Interaction Lab


void setup() {
  Serial.begin(9600);
}


void loop() {
  int sensorValue = analogRead(A0);
  Serial.write(sensorValue);

  // too fast communication might cause some latency in Processing
  // this delay resolves the issue.
  delay(10);
}

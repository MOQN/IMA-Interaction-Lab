// IMA NYU Shanghai
// Interaction Lab


void setup() {
  Serial.begin(9600);
}


void loop() {
  int sensorValue = analogRead(A0);
  Serial.write(sensorValue);
  
  delay(10);
}

// IMA NYU Shanghai
// Interaction Lab

void setup() {
  Serial.begin(9600);
}

void loop() {
  int sensor = analogRead(A0);
  Serial.write(sensor);
  
  delay(10);
}

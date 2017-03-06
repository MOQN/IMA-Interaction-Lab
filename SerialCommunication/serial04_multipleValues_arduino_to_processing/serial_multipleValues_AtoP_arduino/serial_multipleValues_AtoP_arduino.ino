// IMA NYU Shanghai
// Interaction Lab

void setup() {
  Serial.begin(9600);
}

void loop() {
  int sensor1 = analogRead(A0);
  int sensor2 = analogRead(A1);
  int sensor3 = analogRead(A2);

  // keep this format
  Serial.print(sensor1);
  Serial.print(",");  // put comma between sensor values
  Serial.print(sensor2);
  Serial.print(",");
  Serial.print(sensor3);
  Serial.println(); // add linefeed after sending the last sensor value

  delay(10);
}

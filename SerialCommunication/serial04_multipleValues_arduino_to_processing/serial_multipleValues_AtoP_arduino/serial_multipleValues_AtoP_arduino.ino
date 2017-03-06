// IMA NYU Shanghai
// Interaction Lab

void setup() {
  Serial.begin(9600);
}

void loop() {
  int sensor1 = analogRead(A0);
  int sensor2 = analogRead(A1);
  int sensor3 = analogRead(A2);

  // keey this format carefully
  // put comma between sensor values
  // add linefeed after sending the last sensor value
  Serial.print(sensor1);
  Serial.print(",");  
  Serial.print(sensor2);
  Serial.print(",");
  Serial.print(sensor3);
  Serial.println(); 

  delay(1);
}

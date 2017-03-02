void setup() {
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
}


void loop() {
  for (int i = 0; i < 4; i++) {
    digitalWrite(8 + i, HIGH);
  }
  delay(500);
  for (int i = 0; i < 4; i++) {
    digitalWrite(8 + i, LOW);
  }
  delay(500);
}

// variable declaration
int blinkSpeed = 500;

void setup() {
  pinMode(13, OUTPUT);
}

void loop() {
  digitalWrite(13, HIGH);
  delay(blinkSpeed);
  digitalWrite(13, LOW);
  delay(blinkSpeed);
}

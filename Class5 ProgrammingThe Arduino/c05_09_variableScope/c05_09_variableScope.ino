// global variable
int ledPin = 13;

void setup() {
  pinMode(ledPin, OUTPUT);
}

void loop() {
  // local variable
  int blinkSpeed = 500;
  
  digitalWrite(ledPin, HIGH);
  delay(blinkSpeed);
  digitalWrite(ledPin, LOW);
  delay(blinkSpeed);
}

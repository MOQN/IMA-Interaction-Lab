// Analog I/O Function Usage

int val = 0; // a variable

void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
}

void loop() {
  val = analogRead(A0);
  Serial.println(val);
}

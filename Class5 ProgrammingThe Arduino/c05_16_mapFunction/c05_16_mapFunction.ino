int val = 0;
int ledPin = 9;

void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
}

void loop() {
  // range 0 ~ 1023
  val = analogRead(A0); 
  
  int mapVal = map(val, 0, 1023, 0, 255);
  Serial.println(mapVal);

  // range 0 ~ 255
  analogWrite(ledPin, mapVal); 
}



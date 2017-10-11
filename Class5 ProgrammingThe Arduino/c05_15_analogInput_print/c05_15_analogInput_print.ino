int val = 0;

void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
}

void loop() {
  val = analogRead(A0);
  
  if (val > 200) {
    digitalWrite(13, HIGH);
    Serial.println("YES");
  } else {
    digitalWrite(13, LOW);
    Serial.println("NO");
  }
}



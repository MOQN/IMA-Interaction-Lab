// comparison

int num = 255;

void setup() {
  Serial.begin(9600);
}

void loop() {
  if (num >= 200) {
    Serial.println("YES");
  } else {
    Serial.println("NO");
  }
}

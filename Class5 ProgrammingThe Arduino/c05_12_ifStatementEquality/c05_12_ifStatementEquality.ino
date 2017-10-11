// equality

int num = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  if (num == 0) {
    Serial.println("YES");
  } else {
    Serial.println("NO");
  }
}

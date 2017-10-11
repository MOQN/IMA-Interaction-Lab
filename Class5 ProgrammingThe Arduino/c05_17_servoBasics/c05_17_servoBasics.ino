#include <Servo.h>

Servo myservo;

void setup() {
  myservo.attach(9);
}

void loop() {
  // range 0 ~ 180
  myservo.write(0);
  delay(1000);
  myservo.write(180);
  delay(1000);
}



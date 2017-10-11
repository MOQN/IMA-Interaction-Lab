#include <Servo.h>

int val = 0;
Servo myservo;

void setup() {
  Serial.begin(9600);
  myservo.attach(9);
}

void loop() {
  // range 0 ~ 1023
  val = analogRead(A0); 
  
  int angle = map(val, 0, 1023, 0, 180);
  Serial.println(angle);

  // range 0 ~ 180
  myservo.write(angle);
}



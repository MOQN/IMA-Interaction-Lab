int keyValue;

void setup() {
  size(500, 500);
  textSize(25);
}

void draw() {
  background(0);
  text(char(keyValue), 100, 100);
  text(int(keyValue), 100, 130);
}

void keyPressed() {
  keyValue = key;
  println(char(keyValue) + ": " + int(keyValue)); 
}
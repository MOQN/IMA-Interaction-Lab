int value;

void setup() {
  size(500, 600);
}

void draw() {
  background(0);
  
  // or operator
  if (mouseX < 100 || mouseX > 400) {
    background(255,0,0);
  }
  
  value = mouseX;
  text(value, mouseX, mouseY);
}
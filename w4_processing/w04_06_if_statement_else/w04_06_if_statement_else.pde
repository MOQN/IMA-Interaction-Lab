int value;

void setup() {
  size(500, 600);
}

void draw() {
  background(0);
  
  if (mouseX < 100) {
    background(255,0,0);
  } else {
    background(0,0,255);
  }
  
  value = mouseX;
  text(value, mouseX, mouseY);
}
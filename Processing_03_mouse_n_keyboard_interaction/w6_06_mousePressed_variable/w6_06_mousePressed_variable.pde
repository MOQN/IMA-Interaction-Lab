// IMA @ NYU Shanghai
// Interaction Lab
// Mouse & Keyboard Interaction


void setup() {
  size(500,600);
  background(0);
}

void draw() {
  if (mousePressed == true) {
    ellipse(mouseX, mouseY, 50, 50);
  }
}
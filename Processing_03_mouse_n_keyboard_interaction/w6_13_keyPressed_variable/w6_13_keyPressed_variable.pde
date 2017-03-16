// IMA @ NYU Shanghai
// Interaction Lab
// Mouse & Keyboard Interaction


void setup() {
  size(500, 600);
  background(0);
}

void draw() {
  if (keyPressed == true) {
    background(random(255), random(255), random(255));
  }
}
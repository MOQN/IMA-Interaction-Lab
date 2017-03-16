// IMA @ NYU Shanghai
// Interaction Lab
// Mouse & Keyboard Interaction

color myColor;

void setup() {
  size(500,600);
  background(0);
  noStroke();
  
  myColor = color(255);
}

void draw() {
  if (mousePressed) {
    fill(myColor);
    ellipse(mouseX, mouseY, 30, 30);
  }
}

void mousePressed() {
  myColor = color(random(255),random(255),random(255));
}
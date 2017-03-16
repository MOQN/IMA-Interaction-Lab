// IMA @ NYU Shanghai
// Interaction Lab
// Mouse & Keyboard Interaction

color myColor;

void setup() {
  size(500,600);
  background(0);
  noFill();
  
  myColor = color(255);
}

void draw() {
  if (mousePressed) {
    stroke(myColor);
    strokeWeight(30);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void mousePressed() {
  myColor = color(random(255),random(255),random(255));
}
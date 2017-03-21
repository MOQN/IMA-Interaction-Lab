// IMA NYU Shanghai
// Interaction Lab

void setup() {
  size(500, 600);
  noStroke();
  background(0);
}

void draw() {
  background(0);
  ellipse(width/2, height/2, random(-100, 100), random(-100, 100));
}
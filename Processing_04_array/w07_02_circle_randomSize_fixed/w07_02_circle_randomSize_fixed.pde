// IMA NYU Shanghai
// Interaction Lab

void setup() {
  size(500, 600);
  noStroke();
  background(0);
}

void draw() {
  background(0);
  float dia = random(-100, 100);
  ellipse(width/2, height/2, dia, dia);
}
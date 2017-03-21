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
  ellipse(random(width), random(width), dia, dia);
}
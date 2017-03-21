// IMA NYU Shanghai
// Interaction Lab

float x, y, dia;

void setup() {
  size(500, 600);
  noStroke();
  background(0);

  x = random(width);
  y = random(height);
  dia = random(-100, 100);
}

void draw() {
  background(0);

  ellipse(x, y, dia, dia);
}
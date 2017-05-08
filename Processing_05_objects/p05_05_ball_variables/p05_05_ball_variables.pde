// IMA NYU Shanghai
// Interaction Lab


float x, y, size;
color clr;


void setup() {
  size(500, 600);
  noStroke();

  x = random(width);
  y = random(height);
  size = random(10,100);
  clr = color(random(255),random(255),random(255));
}


void draw() {
  background(100);

  fill(clr);
  ellipse(x, y, size, size);
}
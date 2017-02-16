// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 7 2016

void setup() {
  size(500, 600);
  noStroke();
}

void draw() {
  int rectSize = 5;
  for (int y=0; y<height; y+=rectSize) {
    for (int x=0; x<width; x+=rectSize) {
      fill(random(255), random(255), random(255));
      rect(x, y, rectSize, rectSize);
    }
  }
}
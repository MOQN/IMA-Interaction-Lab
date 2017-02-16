// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 7 2016

void setup() {
  size(500, 600);
  noStroke();
  int rectSize = 20;
  for (int x=0; x<width; x+=rectSize) {
    fill(random(255),random(255),random(255));
    rect(x,0,rectSize,rectSize);
  }
}

void draw() {
  // nothing yet
}
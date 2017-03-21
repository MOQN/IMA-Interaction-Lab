// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Oct 18 2016

Ball[] balls = new Ball[100];

void setup() {
  size(500, 600);
  noStroke();
  background(0);
  for (int i=0; i<balls.length; i++) {
    balls[i] = new Ball();
  }
}

void draw() {
  background(0);
  for (int i=0; i<balls.length; i++) {
    balls[i].move();
    balls[i].bounce();
    balls[i].display();
  }
}
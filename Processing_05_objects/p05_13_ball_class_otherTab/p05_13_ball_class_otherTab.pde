// IMA NYU Shanghai
// Interaction Lab

// the class is moved to the tab "Ball"!

Ball[] balls;


void setup() {
  size(500, 600);
  noStroke();

  balls = new Ball[50];
  for (int i=0; i<balls.length; i++) {
    balls[i] = new Ball(random(width), random(height));
  }
}


void draw() {
  background(100);

  for (int i=0; i<balls.length; i++) {
    balls[i].move();
    balls[i].bounce();
    balls[i].display();
  }
}
// IMA NYU Shanghai
// Interaction Lab


Ball[] balls;


void setup() {
  size(500, 600);
  noStroke();

  // initialize the array
  balls = new Ball[50]; // 50 elements!

  // we can use for-loop here too
  // because we gave the total number of the elements
  for (int i=0; i<balls.length; i++) {
    balls[i] = new Ball(random(width), random(height));
  }
}


void draw() {
  background(100);

  // now we have to use for-loop!
  for (int i=0; i<balls.length; i++) {
    balls[i].display();
  }
}


class Ball {
  // variables
  float x, y, size;
  color clr;

  // constructor
  Ball(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    size = random(10, 100);
    clr = color(random(255), random(255), random(255));
  }

  // functions(methods)
  void display() {
    fill(clr);
    ellipse(x, y, size, size);
  }
}
// IMA NYU Shanghai
// Interaction Lab

Ball[] balls;

void setup() {
  size(500, 600);
  noStroke();

  // initialize the array
  balls = new Ball[3];

  // add the object into the array
  balls[0] = new Ball(100, 200);
  balls[1] = new Ball(300, 100);
  balls[2] = new Ball(300, 300);
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
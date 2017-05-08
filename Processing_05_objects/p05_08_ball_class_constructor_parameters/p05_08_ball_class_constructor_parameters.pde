// IMA NYU Shanghai
// Interaction Lab

Ball b;

void setup() {
  size(500, 600);
  noStroke();

  // we can add parameters here too!
  // now the position can be changed.
  b = new Ball(width/2, height/2);
}


void draw() {
  background(100);

  b.display();
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
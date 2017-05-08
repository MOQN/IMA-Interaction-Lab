// IMA NYU Shanghai
// Interaction Lab

Ball b;

void setup() {
  size(500, 600);
  noStroke();

  b = new Ball();
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
  Ball() {
    x = random(width);
    y = random(height);
    size = random(10, 100);
    clr = color(random(255), random(255), random(255));
  }
  
  // functions(methods)
  void display() {
    fill(clr);
    ellipse(x, y, size, size);
  }
}
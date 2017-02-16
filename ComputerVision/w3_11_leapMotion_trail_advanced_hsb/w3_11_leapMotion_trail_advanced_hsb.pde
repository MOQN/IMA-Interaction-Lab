// IMA NYU Shanghai
// Kinetic Interfaces
// MOQN
// Sep 18 2016


float fingerIX, fingerIY;
float fingerTX, fingerTY;

ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
  size(800, 500);
  background(0);
  noStroke();
  colorMode(HSB);
  LMsetup();
}


void draw() {
  background(0);

  LMdraw();

  // add 3 circles per frame
  for (int i=0; i<3; i++) {
    circles.add( new Circle( fingerIX, fingerIY, random(10), color(frameCount%360+random(-30,30), 255, 255)) );
  }

  // update & draw circles
  for (int i=0; i<circles.size(); i++) {
    circles.get(i).update();
    circles.get(i).display();
  }
  // remove the circles whose alpha is less than 0
  for (int i=circles.size()-1; i>=0; i--) {
    if (circles.get(i).alpha <= 0) {
      circles.remove(i);
    }
  }

  text(circles.size(), 10, 20);
}

class Circle {
  float x, y;
  float size;
  color clr;
  int alpha;
  float speed;
  float directionX, directionY;

  Circle(float _x, float _y, float _size, color _clr) {
    x = _x;
    y = _y;
    size = _size;
    clr = color(255);
    alpha = 255;
    directionX = random(-1, 1);
    directionY = random(-1, 1);
    speed = 0.1;
    clr = _clr;
  }

  void update() {
    x = x + directionX*speed;
    y = y + directionY*speed;
    alpha -= 2;
    //speed += 0.05;
    speed *= 1.02;
  }
  void display() {
    pushStyle();
    fill(clr, alpha);
    ellipse(x, y, size, size);
    popStyle();
  }
  void changeColor(color c) {
    clr = c;
  }
}
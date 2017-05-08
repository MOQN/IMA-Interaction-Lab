// IMA NYU Shanghai
// Interaction Lab


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
    balls[i].bounce();  // don't forget we have to call the function!
    balls[i].display();
  }
}


class Ball {
  float x, y, size;
  color clr;
  float xspeed, yspeed;

  Ball(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    size = random(10, 100);
    clr = color(random(255), random(255), random(255));

    xspeed = random(-2, 2);
    yspeed = random(-2, 2);
  }

  void display() {
    fill(clr);
    ellipse(x, y, size, size);
  }

  // we can add more functions(methods)!!
  void move() {
    x += xspeed;
    y += yspeed;
  }

  void bounce() {
    if (x < 0) {
      xspeed = -xspeed;
    } else if (x > width) {
      xspeed = -xspeed;
    }
    if (y < 0) {
      yspeed = -yspeed;
    } else if (y > height) {
      yspeed = -yspeed;
    }
  }
}
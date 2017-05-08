// you can organize your code better by using the tabs!

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
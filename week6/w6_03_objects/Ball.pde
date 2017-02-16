class Ball {
  // variables (fields)
  int x;
  int y;
  float xSpeed;
  float ySpeed;
  int size;
  
  // constructor 
  Ball() {
    x = int(random(width));
    y = int(random(height));
    xSpeed = random(1,5);
    ySpeed = random(1,5);
    size = int(random(10, 30));
  }

  // functions
  void display() {
    ellipse(x, y, size, size);
  }
  void move() {
    x += xSpeed;
    y += ySpeed;
  }
  void bounce() {
    if (x<0 || x>width) {
      xSpeed *= -1;
    }
    if (y<0 || y>height) {
      ySpeed *= -1;
    }
  }
}
int x;
int y;
int size;

void setup() {
  size(500, 600);

  x = 0;
  y = width/2;
  size = 50;
}

void draw() {
  background(0);
  
  x = x + 1;  // x++;
  
  if (x < 100) {
    background(255, 0, 0);
  } else if (x < 300) {
    background(255, 0, 255);
  } else {
    background(0, 0, 255);
  }
  
  if (x > width) {
    x = 0;
  }
  ellipse(x, y, size, size);
}
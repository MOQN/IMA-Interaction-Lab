float x;
float y;
int size;

void setup() {
  size(500, 600);
  noStroke();

  x = width/2;
  y = height/2;
  size = 100;
}


void draw() {
  background(100);

  x+=0.5;  // x = x + 0.5;
  size++;  // size = size + 1;

  fill(255, 0, 0);
  ellipse(x, y, size, size);
}
int size;

void setup() {
  size(500, 600);
  background(0);

  size = 50;
  for (int i=0; i<7; i++) {
    fill(random(255), random(255), random(255));
    rect(i*size, 0, size, size);
  }

  size = 100;
  for (int x=0; x<width; x += size) {
    fill(random(255), random(255), random(255));
    rect(x, 200, size, size);
  }
}

void draw() {
  //
}
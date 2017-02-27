int size;

void setup() {
  size(500, 600);
  background(0);
  noStroke();

  size = 50;
  for (int y=0; y<height; y += size) {
    for (int x=0; x<width; x += size) {
      fill(random(255), random(255), random(255));
      rect(x, y, size, size);
    }
  }
}

void draw() {
  //
}
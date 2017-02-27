int count;

void setup() {
  size(500, 600);
  background(0);
}

void draw() {
  switch (count) {
  case 0:
    background(0);
    break;
  case 1:
    background(255, 0, 0);
    break;
  case 2:
    background(0, 255, 0);
    break;
  case 3:
    background(0, 0, 255);
    break;
  case 4:
    background(255, 0, 255);
    break;
  default:
    count = 0;
  }

  text(count, 10, 20);
}

void mousePressed() {
  count++;  // count = count + 1;
}
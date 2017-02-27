int count;

void setup() {
  size(500, 600);
  background(0);
}

void draw() {
  if (count == 0) {
    background(0);
  } else if (count == 1) {
    background(255, 0, 0);
  } else if (count == 2) {
    background(0, 255, 0);
  } else if (count == 3) {
    background(0, 0, 255);
  } else if (count == 4) {
    background(255, 0, 255);
  } else {
    count = 0;
  }

  text(count, 10, 20);
}

void mousePressed() {
  count++;  // count = count + 1;
}
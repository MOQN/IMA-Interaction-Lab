// IMA @ NYU Shanghai
// Interaction Lab
// Mouse & Keyboard Interaction

int x, y;

void setup() {
  size(500, 600);
  x = width/2;
  y = height/2;
}

void draw() {
  background(0);

  if (keyPressed) {
    if (keyCode == LEFT) {
      x--;
    } else if (keyCode == RIGHT) {
      x++;
    } else if (keyCode == UP) {
      y--;
    } else if (keyCode == DOWN) {
      y++;
    }
  }

  ellipse(x, y, 30, 30);
}
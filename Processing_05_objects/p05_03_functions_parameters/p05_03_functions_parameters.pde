// IMA NYU Shanghai
// Interaction Lab

void setup() {
  size(500, 600);
  noStroke();
}

void draw() {
  background(100);
  
  // reusability!
  star(100, 100);
  star(400, 300);
  star(mouseX, mouseY);
}

// we can add parameters!
// now we can change the position!

void star(int x, int y) {
  pushMatrix();
  translate(x, y);
  triangle(0, 100, 100, -50, -100, -50);
  rotate(PI);
  triangle(0, 100, 100, -50, -100, -50);
  popMatrix();
}
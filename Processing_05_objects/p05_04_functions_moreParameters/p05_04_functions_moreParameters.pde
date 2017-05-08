// IMA NYU Shanghai
// Interaction Lab

void setup() {
  size(500, 600);
  noStroke();
}

void draw() {
  background(100);

  // reusability!
  fill(255, 0, 0);
  star(100, 100, 0.3);
  
  fill(255, 255, 0);
  star(150, 400, 1.2);
  
  fill(255, 0, 255);
  star(400, 300, 0.7);
}

// we can add more parameters!
// now we can change the size too!

void star(int x, int y, float scaleValue) {
  pushMatrix();
  translate(x, y);
  scale(scaleValue);
  triangle(0, 100, 100, -50, -100, -50);
  rotate(PI);
  triangle(0, 100, 100, -50, -100, -50);
  popMatrix();
}
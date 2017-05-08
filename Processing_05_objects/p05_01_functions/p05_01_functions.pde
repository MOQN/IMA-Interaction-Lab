// IMA NYU Shanghai
// Interaction Lab

void setup() {
  size(500, 600);
  noStroke();
}

void draw() {
  background(100);

  // let's draw a star!
  
  // draw a triangle at the center
  translate(width/2, height/2);
  triangle(0, 100, 100, -50, -100, -50);
  // and draw one more triangle fliped
  rotate(PI);
  triangle(0, 100, 100, -50, -100, -50);
}
// IMA NYU Shanghai
// Interaction Lab

void setup() {
  size(500, 600);
  noStroke();
}

void draw() {
  background(100);

  // we can organize the block of code
  // by creating a function - modularity!!
  star();
}

void star() {
  // let's not forget to wrap the transformation functions
  // with push/popMatrix()
  pushMatrix();
  translate(width/2, height/2);
  triangle(0, 100, 100, -50, -100, -50);
  rotate(PI);
  triangle(0, 100, 100, -50, -100, -50);
  popMatrix();
}
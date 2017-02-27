void setup() {
  size(500, 600);
  background(0);
  noFill();
}


void draw() {
  background(0);
  star();
}



// user-defined function 
void star() {
  stroke(255, 255, 0);

  beginShape();
  vertex(244, 121);
  vertex(135, 420);
  vertex(398, 230);
  vertex(85, 246);
  vertex(353, 414);
  endShape(CLOSE);
}

// pre-defined function 
void mousePressed() {
  println(mouseX + ", " + mouseY); // this is the way to combine text
}
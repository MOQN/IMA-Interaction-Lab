void setup() {
  size(500, 600);
  background(0);
  noFill();
}


void draw() {
  //background(0);
  stroke(255,255,0);
  beginShape();
  vertex(100, 167);
  vertex(190, 430);
  vertex(366, 330);
  endShape(CLOSE);
}


void mousePressed() {
  println(mouseX + ", " + mouseY); // this is the way to combine texts
}
void setup() {
  size(500, 600);
  background(0);
  noFill();
}


void draw() {
  //background(0);
  stroke(255,255,0);
  beginShape();
  vertex(249, 148);
  vertex(101, 279);
  vertex(183, 443);
  vertex(344, 452);
  vertex(421, 296);
  vertex(284, 275);
  endShape(CLOSE);
}


void mousePressed() {
  println(mouseX + ", " + mouseY); // this is the way to combine texts
}
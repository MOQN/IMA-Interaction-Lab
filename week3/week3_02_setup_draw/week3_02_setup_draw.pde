// run once
void setup() {
  size(500, 600);
  background(255);
  noStroke();
  println(frameRate);
  
  fill(255,255,0);
  ellipse(500/2, 600/2, 300, 300);
}


// repeat
void draw() {
  println(frameCount);
  text(frameCount, 10, 20);
}
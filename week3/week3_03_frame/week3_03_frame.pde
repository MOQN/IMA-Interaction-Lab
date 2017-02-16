// run once
void setup() {
  size(500, 600);
  background(255);
  noStroke();

  frameRate(30);
  println(frameRate);
}


// repeat
void draw() {
  background(255);

  fill(255, 255, 0);
  ellipse(width/2, height/2, 300, 300);
  fill(255, 0, 0);
  ellipse(width/2, height/2, frameCount, frameCount);
  fill(150);
  rect(frameCount, frameCount, 100, 100);

  fill(0);
  text(frameCount, 10, 20);
}
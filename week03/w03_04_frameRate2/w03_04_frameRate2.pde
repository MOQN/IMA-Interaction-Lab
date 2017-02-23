void setup() {
  size(500, 600);
  // set the frameRate by 10
  frameRate(10);
}

void draw() {
  background(0);
  ellipse(frameCount,frameCount,100,100);
  // show the text on the canvas
  text(frameRate, 10, 20);
}
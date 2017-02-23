void setup() {
  size(500, 600);
  background(255);
  noStroke();

  // set the frameRate by 30
  frameRate(30);
}

void draw() {
  background(0);
  // show the text on the canvas
  text(frameRate, 10, 20);
  // print the text in the console
  println(frameRate);
}
// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 15 2016

//fingerX and fingerY values to store X and Y coordinates of the finger
float fingerX, fingerY;
boolean drawHands = false; // if true the hand will show up!

void setup() {
  size(800, 500, P3D); //P3D to use 3D in the sketch
  background(255);
  noStroke();

  setupLeapMotion();
}


void draw() {
  background(255);
  updateLeapMotion();



  // add your code here!
  // use fingerX and fingerY.



  // show the position of finger
  stroke(255, 0, 0);
  ellipse(fingerX, fingerY, 10, 10);
  // draw crossed lines to look cool!
  line(fingerX, 0, fingerX, height);
  line(0, fingerY, width, fingerY);
}
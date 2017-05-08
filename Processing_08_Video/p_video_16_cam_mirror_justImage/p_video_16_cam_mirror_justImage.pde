// IMA NYU Shanghai
// Interaction Lab
// Sep 21 2016


import processing.video.*;

Capture cam;


void setup() {
  size(640, 480);

  cam = new Capture(this, 640, 480);
  cam.start();
}


void draw() {
  if (cam.available()) {
    cam.read();
  }
  pushMatrix();
  //move image to the right by width
  translate(cam.width, 0);
  //then horizontally reflect
  scale(-1,1);
  image(cam, 0, 0);
  popMatrix();
}
// IMA NYU Shanghai
// Interaction Lab
// Sep 21 2016


import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);
  background(0);
  
  cam = new Capture(this, 640, 480);
  cam.start();
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 0, 0, width, height);
}
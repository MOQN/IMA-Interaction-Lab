// IMA NYU Shanghai
// Interaction Lab
// Sep 21 2016


import processing.video.*;

Capture cam;
PImage mirror;

void setup() {
  size(640, 480);

  cam = new Capture(this, 640, 480);
  cam.start();

  mirror = createImage(cam.width, cam.height, RGB); //ARGB, if you want to add alpha  //not RGBA
}


void draw() {
  if (cam.available()) {
    cam.read();
    
    cam.loadPixels();
    mirror.loadPixels();
    
    int w = cam.width;
    int h = cam.height;
    for (int y = 0; y < h; y++) {
      for (int x = 0; x < w; x++) {
        int i =  x + y*w; // IMPORTANT

        //make right most pixel in the cam object
        //become the left most pixel in the mirror PImage
        int mirrorX = cam.width-1 - x;
        int mirrorIndex = mirrorX + y*w; 
        //update mirrored pixels to the PImage mirror
        mirror.pixels[mirrorIndex] = cam.pixels[i];
      }
    }
    mirror.updatePixels();
  }

  image(mirror, 0, 0);
}
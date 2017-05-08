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
    //can load pixels of camera input
    //just like how we load pixels of an image
    cam.loadPixels();

    int w = cam.width;
    int h = cam.height;
    for (int y = 0; y < h; y++) {
      for (int x = 0; x < w; x++) {
        int i =  x + y*w; // ********** IMPORTANT **********

        int r = int( red(cam.pixels[i])); 
        int g = int( green(cam.pixels[i]));
        int b = int( blue(cam.pixels[i]));
        
        cam.pixels[i] = color(r+80, g+80, b+80); // adding 80 makes the image brighter
        
        // try these too!
        //cam.pixels[i] = color(r, 0, 0); // show only red color
        //cam.pixels[i] = color(g, b, r); // mix the order of RGB colors
      }
    }
    cam.updatePixels();
  }
  
  image(cam, 0, 0);
}
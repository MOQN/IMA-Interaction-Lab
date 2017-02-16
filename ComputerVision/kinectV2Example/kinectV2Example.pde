// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 12 2016

import org.openkinect.freenect.*;
import org.openkinect.freenect2.*;
import org.openkinect.processing.*;

Kinect2 kinect2;
PImage depthImg;
PImage colorImg;

void setup() {
  size(1000, 600, P3D);
  setupPeasyCam();
  setupGui();

  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initRegistered();
  kinect2.initDevice();

  // Blank image
  depthImg = new PImage(kinect2.depthWidth, kinect2.depthHeight, ARGB);
}


void draw() {
  background(0);

  // registeredImage;
  if (registeredColor) {
    colorImg = kinect2.getRegisteredImage();
    colorImg.loadPixels();
  }
  // rawDepth value & depthImage
  int[] rawDepth = kinect2.getRawDepth();
  depthImg.loadPixels();

  for (int i=0; i < rawDepth.length; i++) {
    depthImg.pixels[i] = color(0, 0);
    if (rawDepth[i] >= thresholdMin && rawDepth[i] <= thresholdMax && rawDepth[i] != 0) {
      
      // get the width and height from the depthImage
      int w = kinect2.depthWidth;
      int h = kinect2.depthHeight;  

      // get X,Y coordinates 
      int x = i % kinect2.depthWidth;
      int y = floor(i / kinect2.depthWidth);

      // change the pixel colors accoding to the depth value. Just to see the sensing area clearly.
      float r = map(rawDepth[i], thresholdMin, thresholdMax, 255, 0);
      float g = 0;
      float b = map(rawDepth[i], thresholdMin, thresholdMax, 0, 255);
      depthImg.pixels[i] = color(r, g, b);

      // draw PointCloud
      if (pointCloud) {
        if (x%resolution == 0 && y%resolution == 0) {
          
          // map the coordinates to 3D
          float pX = map(x, 0, w, -w/2, w/2) + offsetX;
          float pY = map(y, 0, h, -h/2, h/2);
          float pZ = map(rawDepth[i], 0, 4499, 600, -600) + offsetZ;
          
          // draw points
          if (registeredColor) {
            stroke(colorImg.pixels[i]);
          } else {
            stroke(255);
          }
          strokeWeight(pointSize);
          point(pX, pY, pZ);
        }
      }
    }
  }
  depthImg.updatePixels();


  if (guiToggle) drawGui();
}

void keyPressed() {
  if (key == ' ') guiToggle = !guiToggle;
}
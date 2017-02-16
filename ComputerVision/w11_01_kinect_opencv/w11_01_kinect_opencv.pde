// IMA NYU Shanghai
// Kinetic Interfaces
// MOQN
// Nov 12 2016

import gab.opencv.*;

OpenCV opencvImg;
ArrayList<Contour> contours;

void setup() {
  size(1000, 600, P3D);
  setupPeasyCam();
  setupGui();
  setupKinect();
}


void draw() {
  background(0);
  drawKinect();
  if (guiToggle) drawGui();

  // "drawOpenCV();" is added in the "drawDepthImage()" function at Gui tab
}


void keyPressed() {
  if (key == ' ') guiToggle = !guiToggle;
}


void drawOpenCV() {
  opencvImg = new OpenCV(this, depthImg);
  
  opencvImg.blur(5);
  opencvImg.threshold(10);
  
  // Reduce noise - Dilate and erode to close holes
  opencvImg.dilate();
  opencvImg.erode();
  
  contours = opencvImg.findContours();

  noFill();
  for (Contour contour : contours) {
    stroke(255);
    strokeWeight(2);
    contour.draw();

    //stroke(255, 0, 0);
    //beginShape();
    //for (PVector point : contour.getPolygonApproximation().getPoints()) {
    //  vertex(point.x, point.y);
    //}
    //endShape();
  }
}
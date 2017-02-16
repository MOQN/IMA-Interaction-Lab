// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 15 2016

// Based on: Face It by Daniel Shiffman / ITP Fall 2013 
// https://github.com/shiffman/Face-It

/**
 * Note that this is designed to get only the first person's face.
 * if you want to get more faces at the same time ask to the professors or fellows.
 */

import processing.video.*;
import gab.opencv.*;
//java native library - no need to download this library
import java.awt.Rectangle;

OpenCV opencv;
Capture cam;

//Rectangle class from java.awt.Rectangle library
Rectangle[] faces;
PImage smallerImg;
//for scaling down video for opencv
int scale = 4;

int posX = 0;
int posY = 0;


void setup() {
  size(640, 480);
  cam = new Capture(this, 640, 480);
  cam.start();

  opencv = new OpenCV(this, cam.width/scale, cam.height/scale);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);

  smallerImg = createImage(opencv.width, opencv.height, RGB);
}


void draw() {
  background(0);
  
  // draw the webcam image 
  image(cam, 0, 0);
  
  // detect faces and draw the red rect on it.
  updateFaceDetection();  // DO NOT REMOVE THIS!
  
  
  
  // add your code here!
  // use posX and posY!



  // show the center position
  stroke(0, 255, 0);
  ellipse(posX, posY, 10, 10);
  
  // draw crossed lines to look cool!
  line(posX, 0, posX, height);
  line(0, posY, width, posY);
}












void captureEvent(Capture cam) {
  cam.read();

  //copies entire webcam image to PImage smallerImg
  //for more description, visit https://www.processing.org/reference/PImage_copy_.html
  smallerImg.copy(cam, 
    0, 0, cam.width, cam.height, 
    0, 0, smallerImg.width, smallerImg.height);
  smallerImg.updatePixels();
}

void updateFaceDetection() {
  // We have to always "load" the  image into OpenCV 
  // But we check against the smallerImg image here
  opencv.loadImage(smallerImg);
  faces = opencv.detect();
  //if faces are detected
  if (faces != null) {
    for (int i = 0; i < faces.length; i++) {
      strokeWeight(2);
      stroke(255, 0, 0);
      noFill();
      //for all detected faces, draw a red rect
      rect(faces[i].x*scale, faces[i].y*scale, 
        faces[i].width*scale, faces[i].height*scale);

      // to get the center position of the first face
      posX = faces[0].x*scale + faces[0].width*scale/2;
      posY = faces[0].y*scale + faces[0].height*scale/2;
    }
  }
}
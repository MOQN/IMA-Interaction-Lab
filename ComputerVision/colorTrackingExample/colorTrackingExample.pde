// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 15 2016

/**
 * You can choose the tracking color by clicking it on the canvas.
 * Change "tolerance" variable to adjust the range of sensing area.
 */


import processing.video.*;

Capture cam;

//PImage to color detected areas on top of webcam image
PImage detectedAreaImg;

//save color picked by mousePressed()
color pickedColor;

//increase value of tolerance to be more lenient in color matching
//decrease value of tolerance to be more strict
int tolerance = 20;

//posX and posY to draw center of detected area
int posX = 0;
int posY = 0;


void setup() {
  size(640, 360);
  detectedAreaImg = createImage(640, 360, ARGB); //ARGB to use alpha values
  cam = new Capture(this, 640, 360);
  cam.start();
}


void draw() {
  background(0);

  updateColorTracking(); // DO NOT REMOVE THIS!

  // draw the webcam image 
  image(cam, 0, 0);
  //draw detected areas on top of webcam image
  image(detectedAreaImg, 0, 0);



  // add your code here!
  // use posX and posY!



  // draw the picked color
  noStroke();
  fill(pickedColor);
  rect(10, 10, 50, 50);

  // show the center position
  stroke(0, 255, 0);
  ellipse(posX, posY, 10, 10);
  // draw crossed lines to look cool!
  line(posX, 0, posX, height);
  line(0, posY, width, posY);
}



void mousePressed() {
  //get color values from where mouse is pressed
  pickedColor = cam.get(mouseX, mouseY);
}


void updateColorTracking() {
  if (cam.available() == true) {
    cam.read();
    cam.loadPixels();
  }

  //sumX and sumY to store total sum of x and y coordinates
  int sumX = 0;
  int sumY = 0;
  //avgX and avgY to calculate and store averages of sumX and sumY
  int avgX = 0;
  int avgY = 0;
  //count to increment and store total number of detected pixels
  int count = 0;

  int w = cam.width;
  int h = cam.height;
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int i =  x + y*w; // IMPORTANT

      int r = int( red(cam.pixels[i]) );
      int g = int( green(cam.pixels[i]) );
      int b = int( blue(cam.pixels[i]) );

      //if the color value of the pixel of the webcam image is within this range
      if (r > red(pickedColor)-tolerance && r < red(pickedColor)+tolerance &&
        g > green(pickedColor)-tolerance && g < green(pickedColor)+tolerance &&
        b > blue(pickedColor)-tolerance && b < blue(pickedColor)+tolerance )
      {
        //store color red for that pixel on PImage detectedAreaImg
        detectedAreaImg.pixels[i] = color(255, 0, 0);
        //increment sumX and sumY by the coordinates of detected pixel
        sumX += x;
        sumY += y;
        //increment count
        count++;
      } 
      //if the color value does not fall in the range in the if statement above
      else {
        //make color of the pixel transparent and store in PImage detectedAreaImg
        detectedAreaImg.pixels[i] = color(0, 0);
      }
    }
  }
  // get average position to get the center position
  if (count != 0) {
    avgX = sumX / count;
    avgY = sumY / count;
  }
  detectedAreaImg.updatePixels();

  //update posX and posY as avgX and avgY to draw the center of detected area
  posX = avgX;
  posY = avgY;
}
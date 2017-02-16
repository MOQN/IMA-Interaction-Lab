import processing.video.*;

Movie mov;
PImage img;

void setup() {
  size(500, 500);
  background(255);
  noStroke();
  
  img = loadImage("colorTree.jpg");
  
  int rectSize = 20; 
  img.loadPixels();
  for (int y=0; y<img.height; y+=rectSize) {
    for (int x=0; x<img.width; x+=rectSize) {
      int index = x + y*img.width;
      fill(img.pixels[index]);
      rect(x,y,rectSize,rectSize);
      //rect(x,y,rectSize+random(-5,5),rectSize+random(-5,5));
    }
  }
}
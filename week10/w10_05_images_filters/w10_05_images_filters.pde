// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 7 2016

PImage img;

void setup() {
  size(600, 600);
  img = loadImage("colorful.jpg");
}


void draw() {
  background(0);
  image(img,0,0);
  filter(INVERT);
  
  //filter(BLUR);
  //filter(BLUR, 6);
  //filter(GRAY);
  //filter(THRESHOLD);
  
  // try this!
  //image.filter(BLUR);
  //image.filter(INVERT);
}
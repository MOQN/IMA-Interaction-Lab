// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 7 2016

PImage imageLocal;
PImage imageFromInternet;

void setup() {
  size(600, 600);
  imageLocal = loadImage("colorful.jpg");
  imageFromInternet = loadImage("http://moqn.net/work/equilateral/image-auto/04.jpg");
  
  // Also, please take a look at this:
  // https://processing.org/reference/requestImage_.html
}


void draw() {
  background(0);
  image(imageLocal,0,0);
  image(imageFromInternet,300,0);
}
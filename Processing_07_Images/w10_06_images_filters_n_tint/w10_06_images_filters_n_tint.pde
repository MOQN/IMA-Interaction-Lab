// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 7 2016

PImage img1;
PImage img2;
PImage img3;

void setup() {
  size(600, 600);
  img1 = loadImage("colorful.jpg");
  img2 = loadImage("colorful.jpg");
  img2.filter(BLUR, 10);
  img3 = loadImage("colorTri.jpg");
}


void draw() {
  background(0);
  
  tint(255);
  image(img1,0,0);
  
  float alpha = map(mouseX, 0,width, 0,255);
  tint(255,alpha);
  image(img2,0,0);
  //image(img3,0,0);
}
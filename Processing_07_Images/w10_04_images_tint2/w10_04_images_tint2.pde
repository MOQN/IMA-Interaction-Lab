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
  
  tint(255,255,255,100);
  image(img,0,0,width/2,height/2);
  tint(255,0,255);
  image(img,width/2,0,width/2,height/2);
  tint(255,255,0);
  image(img,0,height/2,width/2,height/2);
  tint(0,255,255);
  image(img,width/2,height/2,width/2,height/2);
}
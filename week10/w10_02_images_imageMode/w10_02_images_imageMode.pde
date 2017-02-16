// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 7 2016

PImage img;

void setup() {
  size(600, 600);
  background(0);
  imageMode(CENTER);
  img = loadImage("colorful_alpha.png");
}


void draw() {
  image(img,mouseX, mouseY, 100, 100);
}
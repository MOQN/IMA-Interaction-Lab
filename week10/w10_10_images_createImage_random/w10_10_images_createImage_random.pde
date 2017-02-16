// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Nov 7 2016

PImage img;

void setup() {
  size(500, 700);
  img = createImage(width, height, RGB);
}

void draw() {
  img.loadPixels();
  for (int i = 0; i < img.pixels.length; i++) {
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
    img.pixels[i] = color(r, g, b);
  }
  img.updatePixels();
  image(img, 0, 0);
}
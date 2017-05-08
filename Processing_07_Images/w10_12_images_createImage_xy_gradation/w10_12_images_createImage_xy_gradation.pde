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
  int index = 0;
  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++) {
      float r = map(x, 0, img.width, 255, 0);
      float g = map(y, 0, img.height, 0, 255);
      float b = map(x, 0, img.width, 0, 255);
      img.pixels[index] = color(r, g, b);
      index++;
    }
  }
  img.updatePixels();
  image(img, 0, 0);
}
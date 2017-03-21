// IMA NYU Shanghai
// Interaction Lab

int NUM_OF_CIRCLES = 10;

float[] x = new float[NUM_OF_CIRCLES];
float[] y = new float[NUM_OF_CIRCLES];
float[] dia = new float[NUM_OF_CIRCLES];

void setup() {
  size(500, 600);
  noStroke();
  background(0);

  for (int i=0; i<x.length; i++) {
    x[i] = random(width);
    y[i] = random(height);
    dia[i] = random(-100, 100);
  }
}

void draw() {
  background(0);

  for (int i=0; i<x.length; i++) {
    ellipse(x[i], y[i], dia[i], dia[i]);
  }
}
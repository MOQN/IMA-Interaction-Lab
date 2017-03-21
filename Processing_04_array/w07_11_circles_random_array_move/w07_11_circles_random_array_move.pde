// IMA NYU Shanghai
// Interaction Lab

int NUM_OF_CIRCLES = 50;

float[] x = new float[NUM_OF_CIRCLES];
float[] y = new float[NUM_OF_CIRCLES];
float[] xspd = new float[NUM_OF_CIRCLES];
float[] yspd = new float[NUM_OF_CIRCLES];
float[] dia = new float[NUM_OF_CIRCLES];
color[] clr = new color[NUM_OF_CIRCLES];


void setup() {
  size(500, 600);
  noStroke();
  background(0);

  for (int i=0; i<x.length; i++) {
    x[i] = random(width);
    y[i] = random(height);
    xspd[i] = random(-1,1);
    yspd[i] = random(-1,1);
    dia[i] = random(10, 50);
    clr[i] = color(random(255),random(255),random(255));
  }
}

void draw() {
  background(0);

  for (int i=0; i<x.length; i++) {
    x[i] += xspd[i];
    y[i] += yspd[i];
    fill(clr[i]);
    ellipse(x[i], y[i], dia[i], dia[i]);
  }
}
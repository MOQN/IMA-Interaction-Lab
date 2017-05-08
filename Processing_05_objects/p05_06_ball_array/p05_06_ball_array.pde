// IMA NYU Shanghai
// Interaction Lab


// declare the arrays
float[] x, y, size;
color[] clr;


void setup() {
  size(500, 600);
  noStroke();

  // initialize them
  x = new float[10];
  y = new float[10];
  size = new float[10];
  clr = new color[10];

  // define the values
  for (int i=0; i<x.length; i++) {
    x[i] = random(width);
    y[i] = random(height);
    size[i] = random(10, 100);
    clr[i] = color(random(255), random(255), random(255));
  }
}


void draw() {
  background(100);

  for (int i=0; i<x.length; i++) {
    fill(clr[i]);
    ellipse(x[i], y[i], size[i], size[i]);
  }
}
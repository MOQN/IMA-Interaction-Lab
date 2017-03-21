int NUM_OF_CIRCLES = 30;

// declare arrays
float[] x, y, dia, xspd, yspd;
color[] clr;


void setup() {
  size(500, 600);
  background(0);

  // initialize the arrays
  x = new float[NUM_OF_CIRCLES];
  y = new float[NUM_OF_CIRCLES];
  xspd = new float[NUM_OF_CIRCLES];
  yspd = new float[NUM_OF_CIRCLES];
  dia = new float[NUM_OF_CIRCLES];
  clr = new color[NUM_OF_CIRCLES];

  // generate random values and store them into the arrays
  for (int i=0; i<x.length; i++) {
    x[i] = random(width);
    y[i] = random(height);
    xspd[i] = random(-1, 1);
    yspd[i] = random(-1, 1);
    dia[i] = random(10, 100);
    clr[i] = color(random(255), random(255), random(255));
  }
}

void draw() {
  background(0);

  for (int i=0; i<x.length; i++) {
    // update
    x[i] = x[i] + xspd[i];
    y[i] += yspd[i];
    // display
    stroke(clr[i]);
    fill(clr[i], 150);
    ellipse(x[i], y[i], dia[i], dia[i]);
  }
}
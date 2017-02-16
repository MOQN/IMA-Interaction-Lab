// IMA NYU Shanghai
// Interaction Lab
// MOQN
// Oct 18 2016

int[] x = new int[10];
int[] y = new int[10];
int[] size = new int[10];

void setup() {
  size(500, 600);
  noStroke();
  background(0);
  int numOfCircles = x.length;
  for (int i=0; i<numOfCircles; i++) {
    x[i] = int(random(width));
    y[i] = int(random(height));
    size[i] = int(random(10, 30));
  }
}

void draw() {
  background(0);
  int numOfCircles = x.length;
  for (int i=0; i<numOfCircles; i++) {
    ellipse(x[i], y[i], size[i], size[i]);
  }
  
}
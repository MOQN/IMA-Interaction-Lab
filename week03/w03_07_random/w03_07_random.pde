void setup() {
  size(500, 600);
  background(0);
  noStroke();
}


void draw() {
  //background(0);

  // random(255);
  // generate a random float from 0 to 255

  // random(30, 80);
  // generate a random float from 30 to 80

  fill(random(255), random(255), random(255), random(255));
  ellipse(random(width), random(height), 30, 30);
}
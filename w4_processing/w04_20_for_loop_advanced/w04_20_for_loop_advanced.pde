void setup() {
  size(500, 600);
  background(0);
  noStroke();

  translate(width/2, height/2);
  for (int i=0; i<100; i++) {
    rotate( radians(20) );
    fill(random(255), random(255), random(255));
    ellipse(i*4, 0, i, i);
  }
}

void draw() {
  //
}
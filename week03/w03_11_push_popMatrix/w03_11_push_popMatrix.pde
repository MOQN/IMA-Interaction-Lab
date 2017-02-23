void setup() {
  size(500, 600);
  background(0);
  
  stroke(255,0,0);
  rectMode(CENTER);
}


void draw() {
  background(0);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(frameCount));
  line(-width, 0, width, 0);
  line(0, -height, 0, height);
  rect(100, 100, 50, 50);
  popMatrix();
  
  rect(100, 100, 50, 50);
}
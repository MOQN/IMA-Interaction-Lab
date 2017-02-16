
void setup() {
  size(500, 600);
  background(0);
  noFill();
}


void draw() {
  //background(0);
  
  // random(255);
  // generate a random float from 0 to 255
  
  // random(30, 80);
  // generate a random float from 30 to 80
  
  stroke(random(255),random(255),random(255),random(255));
  line(width/2, height/2, mouseX, mouseY);
}
// run once
void setup() {
  size(600, 600);
  background(0);
  noStroke();
  
  // draw a yellow circle at the center
  fill(255,255,0);
  ellipse(300, 300, 300, 300);
}


// loop infinitely 
void draw() {
  fill(255,0,0);
  ellipse(300,300,frameCount,frameCount);
}
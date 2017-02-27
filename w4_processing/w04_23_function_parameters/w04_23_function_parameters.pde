void setup() {
  size(500, 600);
  background(0);
  noFill();
}


void draw() {
  background(0);

  // we can use the function again and again!
  star(300, 200, 0.5);
  star(100, 200, 1.0);
  star(400, 500, 0.2);
}



// user-defined function 
void star(int x, int y, float scaleValue) {
  pushMatrix();
  
  translate(x, y);
  scale(scaleValue);
  
  stroke(255, 255, 0);
  strokeWeight(10);
  strokeJoin(CHORD);

  beginShape();
  vertex(5, -169);
  vertex(-117, 152);
  vertex(164, -63);
  vertex(-151, -69);
  vertex(147, 125);
  endShape(CLOSE);
  
  popMatrix();
}

// pre-defined function 
void mousePressed() {
  // think about why I put "-width/2" and "-height/2" :D
  println((mouseX-width/2) + ", " + (mouseY-height/2));
}
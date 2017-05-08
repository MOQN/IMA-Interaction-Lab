// IMA NYU Shanghai
// Interaction Lab

void setup() {
  size(500, 600);
  noStroke();
  background(0);
}

void draw() {
  background(0);
  fill(255, 120);
  
  flower(mouseX,mouseY,0.3,72);
  flower(100,100,0.5,20);
  flower(300,300,0.8,60);
}

void flower(int x, int y, float s, int a) {
  for (int angle=0; angle<360; angle+=a) {
    pushMatrix();
    translate(x, y);
    scale(s);
    rotate( radians(angle) );
    ellipse(0, 0, 50, 300);
    popMatrix();
  }
}
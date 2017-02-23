int x;
int y;
int size;

void setup() {
  size(500, 600);
  noStroke();
  
  x = width/2;
  y = height/2;
  size = 100;
}


void draw() {
  background(100);
  
  fill(255,0,0);
  ellipse(x,y,size,size);
}
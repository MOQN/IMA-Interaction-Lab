int x = 100;
int y = 100;
int w = 50;
int h = 100;

// int _ whole numbers
// 0 1 7 9 10 312 -4 - 8 10

// float _ floating point number
// 0.001 -1.389123
 

void setup() {
  size(500, 600);
  background(255);
  noStroke();
}


void draw() {
  background(255);
  
  w = w + 1;
  h = h + 2;
  
  println(x);
  
  fill(255,0,0);
  rect(mouseX,mouseY,w,h);
}
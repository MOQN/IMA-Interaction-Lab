float x, y, dia;

void setup() {
  size(500, 600);
  background(0);
  noFill();
}


void draw() {
  //background(0);
  
  x = random(width);
  y = random(height);
  float dia = random(3, 100);
  
  stroke(random(255),random(255),random(255));
  line(width/2, height/2, x, y);
  ellipse(x,y,dia,dia); 
}
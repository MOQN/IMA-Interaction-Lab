// IMA NYU Shanghai
// Interaction Lab

float x, y, dia;
float x1, y1, dia1;
float x2, y2, dia2;
// .
// .
// .
// .
// .
// .
// .
// .
// .
// .
// .
// .
// .
// .
// .
// .
// .
// .
float x999, y999, dia999;  // OMG! I can't do this!

void setup() {
  size(500, 600);
  noStroke();
  background(0);

  x = random(width);
  y = random(height);
  dia = random(-100, 100);
  
  x1 = random(width);
  y1 = random(height);
  dia1 = random(-100, 100);
  
  x2 = random(width);
  y2 = random(height);
  dia2 = random(-100, 100);
}

void draw() {
  background(0);

  ellipse(x, y, dia, dia);
  ellipse(x1, y1, dia1, dia1);
  ellipse(x2, y2, dia2, dia2);
}
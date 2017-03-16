// IMA @ NYU Shanghai
// Interaction Lab
// Mouse & Keyboard Interaction


void setup() {
  size(500, 600);
  background(0);
}

void draw() {
  //
}

void keyPressed() {
  println(key);
  
  if (key == 'r' || key == 'R') {
    background(255, 0, 0);
  } else if (key == 'g' || key == 'G') {
    background(0, 255, 0);
  } else if (key == 'b' || key == 'B') {
    background(0, 0, 255);
  }
}
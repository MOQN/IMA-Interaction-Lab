// IMA @ NYU Shanghai
// Interaction Lab
// Mouse & Keyboard Interaction

int count_mousePressedVariable = 0;
int count_mousePressedFunction = 0;

void setup() {
  size(500,600);
  textSize(25);
}

void draw() {
  background(0);
  if (mousePressed) {
    count_mousePressedVariable++;
  }
  
  text("Var: " + count_mousePressedVariable, 100,100);
  text("Fn:  " + count_mousePressedFunction, 100,130);
}

void mousePressed() {
  count_mousePressedFunction++;
}
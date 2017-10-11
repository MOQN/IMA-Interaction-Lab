int count;

void setup() {
  size(500, 600);
  background(0);
  textSize(30);
  
  // oops!
  for (int i=0; i<10; i++) {
    text(i, 100, 100); 
  }
  
  // let's try to change the x positions
  for (int i=0; i<10; i++) {
    text(i, 100 + i*30, 200); 
  }
}

void draw() {
  //
}
void setup() {
  size(500, 600);
  background(0);
  
  for (int i=0; i<10; i++) {
    fill(random(255),random(255),random(255));
    rect(i*50, 0, 50, 50); 
  }
}

void draw() {
  //
}
boolean value = true;

void setup() {
  size(500, 600);
  background(0);
  
  //if the expression is false
  //it breaks out of the while loop.
  while (value) {
    println("looping~");
    value = false;
  }
  
  println("Done!");
}

void draw() {
  //
}
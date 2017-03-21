// IMA NYU Shanghai
// Interaction Lab

int[] numbers = new int[10];

void setup() {
  size(500, 500);
  background(0);

  // let's get the random values
  for (int i=0; i<numbers.length; i++) {
    numbers[i] = int(random(0, 10));
  }

  // console out
  for (int i=0; i<numbers.length; i++) {
    println(numbers[i]);
  }
  
  
  // text on the canvas
  textSize(30);
  for (int i=0; i<numbers.length; i++) {
    text(numbers[i], 100 + i*30, 200);
  }
}

void draw() {
  //
}
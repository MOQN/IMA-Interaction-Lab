// IMA NYU Shanghai
// Interaction Lab

int[] numbers = {5, 2, 1, 9, 7};

void setup() {
  size(500, 500);
  background(0);

  for (int i=0; i<numbers.length; i++) {
    println(numbers[i]);
  }

  textSize(30);
  for (int i=0; i<numbers.length; i++) {
    text(numbers[i], 100 + i*40, 200);
  }
}

void draw() {
  //
}
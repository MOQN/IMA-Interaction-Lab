// IMA NYU Shanghai
// Interaction Lab


ArrayList<Ball> balls = new ArrayList<Ball>();


void setup() {
  size(500, 600);
  noStroke();

  // nothing :D
}


void draw() {
  background(100);

  for (int i=0; i<balls.size(); i++) {
    // I suggest this way!
    // much more convenient, right?
    Ball b = balls.get(i); 
    b.move();
    b.bounce();
    b.display();
  }

  // let's add balls at the mouseX/Y position when mousePressed !
  if (mousePressed) {
    balls.add( new Ball(mouseX, mouseY) );
  }
}
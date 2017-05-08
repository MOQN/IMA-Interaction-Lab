// IMA NYU Shanghai
// Interaction Lab


// ArrayList<DataType> name = new ArrayList<DataType>(); 
ArrayList<Ball> balls = new ArrayList<Ball>();


void setup() {
  size(500, 600);
  noStroke();

  // the length of arrayList can be adjusted dynamically!
  // so we just add more object into the arrayList
  
  balls.add( new Ball(width/2, height/2) );
  balls.add( new Ball(width/2, height/2) );
  balls.add( new Ball(width/2, height/2) );
}


void draw() {
  background(100);

  // when using ArrayList,
  // change "balls.length" to "balls.size()"
  // and "balls[i]" to "balls.get(i)"
  
  for (int i=0; i<balls.size(); i++) {
    balls.get(i).move();
    balls.get(i).bounce();
    balls.get(i).display();
  }
}
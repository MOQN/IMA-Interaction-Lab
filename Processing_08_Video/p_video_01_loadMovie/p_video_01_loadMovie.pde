import processing.video.*;

Movie mv;

void setup() {
  size(640, 360);
  background(0);
  
  mv = new Movie(this, "sample.mov");
  mv.loop();
}

void draw() {
  if (mv.available() == true) {
    mv.read(); 
  }
  image(mv, 0, 0, width, height);
}
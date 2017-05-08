import processing.video.*;

Movie mov;
color c = color(255);

void setup() {
  size(640, 360);
  background(0);
  mov = new Movie(this, "sample.mov");
  mov.loop();
}
void draw() {
  if (mov.available()) {
    mov.read();
  }
  
  float pos = map(mouseX, 0, width, 0, mov.duration());
  mov.jump( pos );
  
  tint(c);
  image(mov, 0, 0);
}

void mouseMoved() {
  c = color(random(255), random(255), random(255));
}
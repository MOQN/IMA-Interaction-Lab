import processing.video.*;

Movie mov;
color tintColor;

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
  tint(tintColor);
  image(mov, 0,0);
}

void keyPressed() {
  tintColor = color(random(255),random(255),random(255));
  mov.jump(random(mov.duration()));
}
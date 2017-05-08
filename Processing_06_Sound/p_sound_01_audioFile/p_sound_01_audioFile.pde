import processing.sound.*;

SoundFile soundfile;

void setup() {
  size(500,600);
  background(0);
  
  soundfile = new SoundFile(this, "vibraphon.aiff");
  soundfile.loop();
}

void draw() {
  background(0);
  soundfile.amp(map(mouseY, 0, height, 1.0, 0.0));
  soundfile.pan(map(mouseX, 0, width, -1.0, 1.0));
}
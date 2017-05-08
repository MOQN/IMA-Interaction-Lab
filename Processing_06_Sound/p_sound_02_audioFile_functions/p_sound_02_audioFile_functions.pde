import processing.sound.*;

SoundFile soundfile;

void setup() {
  size(500,600);
  background(0);
  
  soundfile = new SoundFile(this, "vibraphon.aiff");
  soundfile.play();
}

void draw() {
  background(0);
  soundfile.amp(map(mouseY, 0, height, 1.0, 0.0));
  //soundfile.pan(map(mouseX, 0, width, -1.0, 1.0));
  soundfile.rate(map(mouseX, 0, width, 0.5, 1.5));
}

void keyPressed() {
  if (soundfile.isPlaying() > 0) {
    soundfile.stop();
  } else {
    soundfile.play();
  }
}
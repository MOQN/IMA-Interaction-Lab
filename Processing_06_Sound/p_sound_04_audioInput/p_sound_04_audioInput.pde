import processing.sound.*;

AudioIn input;
Amplitude amp;

float volume = 0;

void setup() {
  size(500,600);
  background(255);
  
  input = new AudioIn(this, 0);
  input.start();
  
  amp = new Amplitude(this);
  amp.input(input);
}

void draw() {
  background(0);
  volume = amp.analyze()*100;
  
  fill(255,0,0);
  ellipse(width/2, height/2, volume*10, volume*10);
  
  text(volume, 10, 20);
}
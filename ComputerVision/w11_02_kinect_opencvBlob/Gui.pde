import controlP5.*;
import java.util.*;
import peasy.*;

PeasyCam cam;
ControlP5 cp5;

boolean guiToggle;

int thresholdMin;
int thresholdMax;
float monitorScale;

boolean pointCloud;
boolean registeredColor;
int resolution;
int pointSize;

Slider2D offsetSlider2D;
float offsetX = 0;
float offsetZ = 0;

void setupPeasyCam() {
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(500);
}

void setupGui() {
  guiToggle = true;

  int sliderW = 100;
  int sliderH = 15;
  int startX = 10;
  int startY = 35;
  int spacing = 20;

  cp5 = new ControlP5( this );
  cp5.addSlider("thresholdMin")
    .setPosition(startX, startY+spacing*0)
    .setSize(sliderW, sliderH)
    .setRange(0, 4499)
    .setValue(1000)
    ;    
  cp5.addSlider("thresholdMax")
    .setPosition(startX, startY+spacing*1)
    .setSize(sliderW, sliderH)
    .setRange(0, 4499)
    .setValue(2000)
    ;
  cp5.addSlider("monitorScale")
    .setPosition(startX, startY+spacing*2)
    .setSize(sliderW, sliderH)
    .setRange(0.1, 1.41)
    .setValue(1.41)
    ;
  cp5.addToggle("pointCloud")
    .setPosition(startX, startY+spacing*4)
    .setSize(sliderW, sliderH)
    .setValue(false)
    ;
  cp5.addToggle("registeredColor")
    .setPosition(startX, startY+spacing*6)
    .setSize(sliderW, sliderH)
    .setValue(false)
    ;
  cp5.addSlider("resolution")
    .setPosition(startX, startY+spacing*8)
    .setSize(sliderW, sliderH)
    .setRange(2, 10)
    .setValue(3)
    ;
  cp5.addSlider("pointSize")
    .setPosition(startX, startY+spacing*9)
    .setSize(sliderW, sliderH)
    .setRange(1, 5)
    .setValue(2)
    ;
  

  offsetSlider2D = cp5.addSlider2D("offset")
    .setPosition(startX, startY+spacing*10)
    .setSize(sliderW, sliderW)
    .setMinMax(-1000, -1000, 1000, 1000)
    .setValue(0, 0)
    ;

  cp5.setAutoDraw(false);
}

void drawGui() {
  // updateGUI
  if (mouseX < 150) cam.setActive(false);
  else  cam.setActive(true);
  offsetX = offsetSlider2D.getArrayValue()[0];
  offsetZ = offsetSlider2D.getArrayValue()[1];

  // draw GUI and DepthImage
  hint(DISABLE_DEPTH_TEST);
  cam.beginHUD();

  pushStyle();
  fill(255);
  cp5.draw();
  text(frameRate, 10, 20);
  drawDepthImage();
  popStyle();

  cam.endHUD();
  hint(ENABLE_DEPTH_TEST);
}

void drawDepthImage() {
  pushStyle();
  pushMatrix();
  translate(width, 0);
  scale(monitorScale);

  int w = kinect2.depthWidth;
  int h = kinect2.depthHeight;

  pushMatrix();
  translate(-w, 0);

  image(kinect2.getDepthImage(), 0, 0);
  image(depthImg, 0, 0);
  
  drawOpenCV(); // *** added here ***

  popMatrix();

  pushStyle();
  popMatrix();
}
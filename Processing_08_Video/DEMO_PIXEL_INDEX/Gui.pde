import controlP5.*;
import java.util.*;

ControlP5 cp5;

int image_width, image_height;

void setupGui() {
  int positionX = pixelInitX - 10;
  int positionY = 470;
  int sliderW = 150;
  int sliderH = 12;
  int spacing = 25;
  cp5 = new ControlP5( this );
  cp5.addSlider("image_width")
    .setPosition(positionX, positionY + spacing*0)
    .setSize(sliderW, sliderH)
    .setRange(1, 7)
    .setNumberOfTickMarks(7)
    .setValue(7)
    ;
  cp5.addSlider("image_height")
    .setPosition(positionX, positionY + spacing*1)
    .setSize(sliderW, sliderH)
    .setRange(1, 7)
    .setNumberOfTickMarks(7)
    .setValue(7)
    ;
  cp5.addButton("reDraw")
    .setPosition(positionX, positionY + spacing*2)
    .setSize(sliderW, sliderH+8)
    ;
}

void reDraw() {
  imgWidth = image_width; 
  imgHeight = image_height;
  println("Re-draw Pixels: " + imgWidth + "x" +imgHeight);

  count = 0;
  indexSelected = -1;
  xSelected = -1;
  ySelected = -1;

  // reset and add pixel bars again
  int colorPitch = (int)random(20, 35);
  int colorStart = (int)random(80, 150);
  pxBars.clear();
  for (int i=0; i<imgHeight; i++) {
    pxBars.add( new PixelBar(i, imgWidth, i*25+colorStart) );
  }
  gridPxs.clear();
  int index = 0;
  for (int y=0; y<imgHeight; y++) {
    for (int x=0; x<imgWidth; x++) {
      gridPxs.add( new GridUnit(index, x, y, pixelSize) );
      index++;
    }
  }
}
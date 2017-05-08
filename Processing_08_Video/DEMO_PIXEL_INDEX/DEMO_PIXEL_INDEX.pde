// IMA NYU Shanghai
// MOQN
// Nov 16 2016

int indexSelected = -1;
int xSelected = -1;
int ySelected = -1;

int imgWidth = 7;
int imgHeight = 7;

int pixelSize = 20;
int pixelInitX = 50;
int pixelInitY = 100;
int pixelMiddleY = pixelInitY + 150;

int count = 0;
int seq = 0;

ArrayList<GridUnit> gridPxs = new ArrayList<GridUnit>();
ArrayList<PixelBar> pxBars = new ArrayList<PixelBar>();


void setup() {  
  size(1060, 600);
  background(60);
  rectMode(CENTER);

  setupPixels();
  setupGrids();
  setupGui();
}


void draw() {
  background(60);

  drawText();
  drawGrids();
  drawPixels();
}


void keyPressed() {
  if (count > imgHeight-1) {
    count = 0;
    indexSelected = -1;
    xSelected = -1;
    ySelected = -1;
    if (seq == 0) seq = 1;
    else seq = 0;
  } else {
    count++;
  }
}


void setupGrids() {
  int index = 0;
  for (int y=0; y<imgHeight; y++) {
    for (int x=0; x<imgWidth; x++) {
      gridPxs.add( new GridUnit(index, x, y, pixelSize) );
      index++;
    }
  }
}

void drawGrids() {
  // grid bg
  pushStyle();
  stroke(100);
  textSize(8);
  for (int i=0; i<imgWidth*imgHeight; i++) {
    int x = pixelInitX + pixelSize*i;
    int y = pixelInitY;
    noFill();
    rect(x, pixelInitY, pixelSize, pixelSize);
    fill(150);
    text(i, x-7, y-1);
  }
  for (int y=0; y<imgHeight; y++) {
    for (int x=0; x<imgWidth; x++) {
      noFill();
      rect(pixelInitX + pixelSize*x, pixelMiddleY + pixelSize*y, 
        pixelSize, pixelSize);
    }
  }
  fill(150);
  for (int y=0; y<imgHeight; y++) {
    text(y, pixelInitX-17, pixelMiddleY + 8 + pixelSize*y);
  }
  for (int x=0; x<imgWidth; x++) {
    text(x, pixelInitX+3 + pixelSize*x, pixelMiddleY - 12);
  }
  popStyle();
  
  // to interact
  switch (seq) {
  case 0:
    int index = 0;
    for (int y=0; y<imgHeight; y++) {
      for (int x=0; x<imgWidth; x++) {
        gridPxs.get(index).display(pixelInitX+ x*pixelSize, pixelMiddleY+ y*pixelSize);
        index++;
      }
    }
    break;
  case 1:
    for (int i=0; i<gridPxs.size(); i++) {
      gridPxs.get(i).display(pixelInitX+ i*pixelSize, pixelInitY);
    }
    break;
  }
}

void setupPixels() {
  for (int i=0; i<imgHeight; i++) {
    pxBars.add( new PixelBar(i, imgWidth, i*30+80) );
  }
}

void drawPixels() {
  for (int i=0; i<pxBars.size(); i++) {
    PixelBar pb = pxBars.get(i);
    switch (seq) {
    case 0:
      if (count <= i) {
        pb.move(pixelInitX + i*pixelSize*imgWidth, pixelInitY);
      } else {
        pb.move(pixelInitX, pixelMiddleY + i*pixelSize);
      }
      break;
    case 1:
      if (count <= i) {
        pb.move(pixelInitX, pixelMiddleY + i*pixelSize);
      } else {
        pb.move(pixelInitX + i*pixelSize*imgWidth, pixelInitY);
      }
      break;
    }
    pb.display();
  }
}


void drawText() {
  pushStyle();
  // text
  fill(255);
  textSize(20);
  text("ARRAY _ 1 Dimensional Data", pixelInitX-20, pixelInitY-30);
  text("IMAGE _ 2 Dimensional Data", pixelInitX-20, pixelMiddleY-30);

  switch (seq) {
  case 0:
    text("Formula _ How do you get the index?", width/2, pixelMiddleY-30);
    textSize(15);
    text(" index = x + y * imageWidth", width/2+10, 480);
    if (indexSelected >= 0) {
      textSize(20);
      fill(255, 0, 0);
      text("x: " + xSelected + ", y: " + ySelected, width/2+10, 280);
      fill(150);
      String str = "index: " + xSelected + " + " + ySelected + " * " + imgWidth;
      if (count > indexSelected/imgWidth) {
        textSize(25);
        fill(0, 255, 255);
        str = str + " = " + indexSelected;
      }
      text(str, width/2+10, 320);
    }
    break;
  case 1:
    text("Formula _ How do you get the x,y coordinates?", width/2, pixelMiddleY-30);
    textSize(15);
    text(" x = index % imageWidth", width/2+10, 480);
    text(" y = floor(index / imageWidth)", width/2+10, 480+20);
    if (indexSelected >= 0) {
      textSize(20);
      fill(255, 0, 0);
      text("index: " + indexSelected, width/2+10, 280);
      fill(150);
      String strX = "x: " + indexSelected + " % " + imgWidth;
      String strY = "y: " + indexSelected + " / " + imgWidth + " = floor(" + indexSelected*1.0/imgWidth + ")";
      if (count > indexSelected/imgWidth) {
        textSize(25);
        fill(0, 255, 255);
        strX = strX + " = " + indexSelected%imgWidth;
        strY = strY + " = " + indexSelected/imgWidth;
      }
      text(strX, width/2+10, 320);
      text(strY, width/2+10, 360);
    }
    break;
  }
  popStyle();
}




class GridUnit {
  int index;
  int x, y, size;

  GridUnit(int _index, int _x, int _y, int _size) {
    index = _index;
    x = _x;
    y = _y;
    size = _size;
  }
  void display(int tempX, int tempY) {
    pushStyle();
    fill(255, sin((frameCount+index*2)*0.05)*20+20);
    if (mouseX > tempX-size/2 && mouseX < tempX+size/2 &&
      mouseY > tempY-size/2 && mouseY < tempY+size/2) {
      stroke(255);
      if (mousePressed) {
        indexSelected = index;
        xSelected = x;
        ySelected = y;
        fill(255, 180);
      }
    } else {
      noStroke();
    }
    if (index == indexSelected) {
      fill(255, 0, 0, 100);
      stroke(255, 0, 0);
      strokeWeight(2);
      textSize(10);
    }   
    rect(tempX, tempY, size, size);
    popStyle();
  }
}

class PixelUnit {
  int index;
  int x, y, size;
  float scale;
  float sat, bri;

  PixelUnit(int _index, int _x, int _y, int _size) {
    index = _index;
    x = _x;
    y = _y;
    size = _size;
    scale = 1.0;
    sat = random(150, 200);
    bri = random(100, 180);
  }
  void checkRollOver(int offsetX, int offsetY) {
    if (mouseX > offsetX+x-size/2 && mouseX < offsetX+x+size/2 &&
      mouseY > offsetY+y-size/2 && mouseY < offsetY+y+size/2) {
      scale = lerp(scale, 2.5, 0.2);
    } else {
      scale = lerp(scale, 1.0, 0.4);
      if (scale < 1.01) scale = 1.0;
    }
  }
  void display(int hue) {
    pushStyle();
    colorMode(HSB);

    pushMatrix();
    translate(x, y);
    if (index == indexSelected && count > indexSelected/imgWidth) {
      fill(0, 255, 170);
      stroke(0, 255, 255);
      scale = lerp(scale, 2.5, 0.5);
    } else {
      fill(hue%255, sat, bri);
      stroke(hue%255, 255, 255);
    }
    scale(scale);
    rect(0, 0, size, size);
    popMatrix();

    popStyle();
  }
  void displayIndex() {
    pushStyle();
    pushMatrix();
    translate(x, y);
    scale(scale);
    fill(255);
    textSize(8);
    text(index, -8, -2);
    popMatrix();
    popStyle();
  }
}

class PixelBar {
  ArrayList<PixelUnit> pxs = new ArrayList<PixelUnit>();
  float x, y;
  int hue;

  PixelBar(int index, int imgWidth, int _hue) {
    for (int i=0; i<imgWidth; i++) {
      int pxIndex = index*imgWidth + i;
      int pxX = pixelSize*i;
      int pxY = 0;
      pxs.add( new PixelUnit(pxIndex, pxX, pxY, pixelSize) );
    }
    hue = _hue;
    x = 50;
    y = 100;
  }

  void move(int targetX, int targetY) {
    x = lerp(x, targetX, 0.08);
    y = lerp(y, targetY, 0.12);
  }
  void display() {
    pushMatrix();
    translate(x, y);
    for (PixelUnit px : pxs) {
      px.checkRollOver(int(x), int(y));
      px.display(hue);
      px.displayIndex();
    }
    popMatrix();
  }
}
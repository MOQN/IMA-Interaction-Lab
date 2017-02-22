// create the canvas 
size(600,600);
// size(w,h);

// change the background color
background(0);
// color range: 0-255
// background(w);
// background(r,g,b);

// change the stroke color
stroke(255,255,0);
// change the thickness of the stroke
strokeWeight(3);
// change the fill color
fill(0,0,255);

// remove the fill color
//noFill();
// remove the stroke color
//noStroke();

// color arguments
// fill(w);
// fill(w,a); //a = alpha = transparency 
// fill(r,g,b);
// fill(r,g,b,a);

// change the starting point of rectangle drawing
rectMode(CENTER);

// draw rectangle
rect(300,300,550,550);
//rect(x,y,w,h);

// draw point and lines
// they are affected by stroke color, not fill color)
//point(100,100);
//line(100,200,300,200);
//line(x1,y1,x2,y2);


// the actual drawing starts from here!

// left eye
stroke(0);
strokeWeight(10);
fill(255);
ellipse(180,200,200,80);
fill(0);
ellipse(180,200,80,80);
fill(255,0,0);
ellipse(180,200,30,80);

// right eye
stroke(0);
strokeWeight(10);
fill(255);
ellipse(420,200,200,80);
fill(0);
ellipse(420,200,80,80);
fill(255,0,0);
ellipse(420,200,30,80);

// nose
fill(255,255,0);
ellipse(300,300,80,80);
size(600, 600);
//size(w, h);

background(0);
//color
//background(w);
//background(r,g,b);


fill(100, 0, 100);
// color RGBA
stroke(255, 0, 0);
strokeWeight(3);
rect(50, 50, 500, 500);

strokeWeight(10);

// left
fill(255);
stroke(0);
ellipse(200, 200, 180, 80);
fill(0);
ellipse(200, 200, 80, 80);
fill(255, 255, 0);
ellipse(200, 200, 30, 80);

// right
fill(255);
stroke(0);
ellipse(400, 200, 180, 80);
fill(0);
ellipse(400, 200, 80, 80);
fill(255, 255, 0);
ellipse(400, 200, 30, 80);

// nose
fill(255, 255, 0);
stroke(0);
line(300, 300, 300, 450);
fill(255, 0, 0);
ellipse(300, 300, 80, 80);

// mouth
noFill();
stroke(0);
arc(300, 300, 300, 300, PI*1/4, PI*3/4);
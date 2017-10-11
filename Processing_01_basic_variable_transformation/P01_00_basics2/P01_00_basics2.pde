size(500,500);
background(100);


// left eyes
stroke(0);
strokeWeight(3);
fill(0);
ellipse(250-150, 230, 100, 100);
noStroke();
fill(255);
ellipse(250-150, 230, 100, 20);
ellipse(250-150, 230, 20, 100);

// right eyes
stroke(0);
strokeWeight(3);
fill(0);
ellipse(250+150, 230, 100, 100);
noStroke();
fill(255);
ellipse(250+150, 230, 100, 20);
ellipse(250+150, 230, 20, 100);

// eyebrows
rectMode(CENTER);
rect(250-130, 220-80, 80, 20);
rect(250+130, 220-80, 80, 20);

// mouth
noFill();

stroke(255,0,0);
strokeWeight(1);
//ellipse(250, 250, 350, 350); // guideline

stroke(255);
strokeWeight(5);
arc(250, 250, 350, 350, PI*0.4, PI*0.6);
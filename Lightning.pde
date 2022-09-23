int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;

void setup()
{
  size(500,500);
  background(147,147,147);
  
  //clouds
  fill(255,255,255);
  stroke(255,255,255);
  rect(0,0,500,40);
  ellipse(30,60,190,150);
  ellipse(180,50,190,130);
  ellipse(320,60,160,130);
  ellipse(450,60,180,120);
  
  //house
  noStroke();
  fill(174,215,240);
  rect(190,400,120,100);
  fill(188,161,131);
  triangle(190,400,250,330,310,400);
 
  strokeWeight(5);
  frameRate(100);
}

void draw()
{
  stroke(255,255,0);
  
  //lightning
  int rightLeft = (int)(Math.random() * 10);
  if(rightLeft < 5) {
    endX = startX - ((int)((Math.random()) * 20));
  } else {
    endX = startX + ((int)((Math.random()) * 20));
  }
  endY = startY + ((int)((Math.random()) * 60));
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  
  //clouds
  fill(255,255,255);
  stroke(255,255,255);
  rect(0,0,500,40);
  ellipse(30,60,190,150);
  ellipse(180,50,190,130);
  ellipse(320,60,160,130);
  ellipse(450,60,180,120);
}

void mousePressed()
{
  //resetting/changing background color
  int bgColor = (int)(Math.random()*40)+130;
  background(bgColor,bgColor,bgColor);
  
  //resetting clouds
  fill(255,255,255);
  stroke(255,255,255);
  rect(0,0,500,40);
  ellipse(30,60,190,150);
  ellipse(180,50,190,130);
  ellipse(320,60,160,130);
  ellipse(450,60,180,120);
 
  //resetting house
  noStroke();
  fill(174,215,240);
  rect(190,400,120,100);
  fill(188,161,131);
  triangle(190,400,250,330,310,400);
  
  //resetting lightning
  strokeWeight(5);
  int randomX = (int)(Math.random()*500);
  startX = randomX;
  startY = 0;
  endX = randomX;
  endY = 0;
}

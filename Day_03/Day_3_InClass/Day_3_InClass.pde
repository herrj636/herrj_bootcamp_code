int xPos, yPos, xSpeed, ySpeed;
int radius = 50;
int circleRadius;
int mouseCircle = 200;
int mouseCircleRadius;

//int

void setup(){
  size(1200, 700);

  xPos = width/2;
  yPos = height/2;
  xSpeed = 15;
  ySpeed = 17;
  
  circleRadius = radius/2;
}

void draw(){
  background(192, 162, 211);
  
  noStroke();
  fill(56, 14, 51);
  ellipse(xPos, yPos, radius, radius);
  
  if (xPos > width - circleRadius || xPos < 0+ circleRadius) {
  xSpeed *=-1;
  }
  
  if(yPos > height - circleRadius || yPos < 0 + circleRadius) {
    ySpeed *= -1;
  }
    xPos += xSpeed;
    yPos += ySpeed;
    
    noStroke();
    if(mouseX > width/2){
      fill(0);
    } else {
    fill(43, 41, 76);
    }
    fill(43, 41, 76);
    ellipse(mouseX, mouseY, mouseCircle, mouseCircle);
  }
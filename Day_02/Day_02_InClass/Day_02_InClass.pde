//draw circle
//make circle move around canvas

int xPos;
int yPos;

int xSpeed;
int ySpeed;

void setup(){
  size (300, 300);
    //background(255);
  xPos = width/2;
  yPos = height/2;
  
  xSpeed = 1;
  ySpeed = 2;
}

void draw(){
  background(255);
  fill(255, 0, 0);
  ellipse(xPos, yPos, 50, 50);
  
  //xPos += 1;
  
  //set boundaries to the canvas
  //if(xPos > width){
  //  xSpeed *= -1;
  //}
  
  //if(xPos < 0){
  //  xSpeed *= -1;
  //}

    xPos += xSpeed;
  yPos+= ySpeed;
  
  if(xPos > width || xPos < 0 ){
    xSpeed *= -1;
  }
  
  if(yPos > height || yPos < 0){
    ySpeed *= -1;
  }
  
  //xPos += xSpeed;
  //yPos+= ySpeed;

}
float yPos = 0;
float speed = 4;
float size;

void setup(){
  size(600,600);
}

void draw(){
  background(255);
  
  moveCircle();
  
  moveCircle();
  drawCircle(width/2,20);
  drawCircle(100, 20);
  size = calculateSize(mouseX/8, mouseY/8);
  drawCircle(500, size);
}

void drawCircle( float xPos, float size){
  fill(0);
  ellipse(xPos, yPos, size, size);
}

void moveCircle(){
  yPos += speed;
  
  if(yPos < 0 || yPos > height){
    speed *= -1;
  }
}

float calculateSize(float x1, float y1){
  float s = x1=y1;
  return s;
}
PImage [] images1 = new PImage [10];
PImage [] images2 = new PImage [10];

float xMoved;

boolean faceLeft = true;

int imageIndex = 0;

void setup(){
  size(1000, 300);
  frameRate(10);
 
  for(int i = 0; i < 10; i++){
    images1[i] = loadImage(i + ".png");
    images2[i] = loadImage("f" + i + ".png");
  }
}

void draw(){
  background(255);
  
  if(faceLeft){
    image(images1[imageIndex], xMoved + width/2, 0);
    imageIndex = (imageIndex + 1) % 10;
  }
  
  if(!faceLeft){
    image(images2[imageIndex], xMoved + width/2, 0);
    imageIndex = (imageIndex + 1) % 10;
  }
}

void keyPressed(){
 if(keyCode == LEFT){
   faceLeft = true;
   xMoved -= 30;
 } else if (keyCode == RIGHT){
   faceLeft = false;
   xMoved += 30;
 }
}
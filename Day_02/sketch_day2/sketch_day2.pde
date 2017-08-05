boolean myBool = true;

void setup(){
  size(200,200);
  background(255);
}

void draw(){
  if(myBool == true){
  fill(255, 0, 0);
  ellipse (width/2, height/2, 50, 50);
  
  } else {
    fill(0, 255, 0);
    ellipse (width/2, height/2, 50, 50);
  }
}
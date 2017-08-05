float radius;
float posX, posY;

void setup(){
  size(500, 500);
}

void draw(){
  //background(255);
  
  if(mousePressed && mouseButton == LEFT){
    //map(value, start1, stop1, start2, stop2)
    radius = map(mouseX, 0, 500, 30, 250);
    ellipse(mouseX, mouseY, radius, radius);
    println(radius);
  }
}
//have a ball that bounces
//daniel schiffmans nature of code

PVector pos, vel;
float r, g, b;
int radius;

void setup(){
  size(600, 600);
  background(0);
  
  pos = new PVector(width/2, height/2);
  vel = new PVector(4,5);
  
  smooth();
  
  radius = 50;
}

void draw(){
  fill(0,10);
  rect(0,0, width, height);
  
  pos.add(vel);
  
  if(pos.x >= (width - radius/2) || pos.x <= radius/2){
    vel.x = vel.x * -1;  
  }
  if(pos.y >= (height - radius/2) || pos.y <= radius/2){
    vel.y = vel.y * -1;  
  }
  
  if(pos.x >= (width - radius/2) || pos.x >= radius/2){
  //if(pos.x <= (width - radius/2) || pos.x >= radius/2){
  //if(pos.x == (width - radius/2) || pos.x == radius/2){
    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
  }
  
  if(pos.y >= (height - radius/2) || pos.y <= radius/2){
    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255); 
  }
  
  noStroke();
  fill(r,g,b);
  ellipse(pos.x, pos.y, 50, 50);
}
//have a ball that bounces
//each time it bounces, it slows down a little bit

PVector pos, speed, grav;

void setup(){
  size(800, 500);
  pos = new PVector (0,0);
  speed = new PVector (1,0);
  grav = new PVector(0,0.1);
}

void draw(){
  noStroke();
  speed.add(grav);
  pos.add(speed);
  
  if(pos.y > height){
    speed.y *= -0.8;
  }
  ellipse(pos.x, pos.y, 10, 10);
}
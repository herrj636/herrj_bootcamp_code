class Particle{
  PVector pos;
  PVector vel;
  PVector acc;
  float radius;
  float lifeSpan;
  
  Particle(){
    acc = new PVector(0, 0.05);
    vel = new PVector(random(-0.5, 0.5),1);
    pos = new PVector(random(0, width),0);
    radius = 10;
    lifeSpan = 100;
  }
  
  void update(){
  vel.add(acc);
  pos.add(vel);
  
  lifeSpan-= 0.8;
  
  }
  
void display(){
  noStroke();
  fill(255, 0, 0, lifeSpan);
  ellipse(pos.x, pos.y, radius, radius);
}
}
PVector pos, vel, acc, grav;

void setup(){
  size(500, 500);
  pos = new PVector (10, 10);
  vel = new PVector (2, 2);
  //acc = new PVector (0.1, 0.1);
  grav = new PVector (0, 0.1);
}

void draw (){
  //vel.x += acc.x;
  //vel.y += acc.y;
  vel.x += grav.x;
  vel.y += grav.y;
  pos.x += vel.x;
  pos.y += vel.y;
  
  ellipse(pos.x, pos.y, 12, 12);
}
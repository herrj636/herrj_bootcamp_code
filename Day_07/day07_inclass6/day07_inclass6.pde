PVector posA, posB;

void setup(){
  size(800, 800);
  background(0);
  frameRate(10);
  posA = new PVector();
  posB = new PVector();
  
}

void draw(){
  float r1 = 300;
  float speed1 = frameCount/100.0 * 8;
  
  posA.x = r1 * cos(speed1);
  posA.y = r1 * sin(speed1);
  
  float r2 = 150;
  float speed2 = frameCount/100.0;  
  
  posB.x = r2 * cos(speed2);
  posB.y = r2 * sin(speed2);
  
  translate(width/2, height/2);
  stroke(255,100);
  line(posA.x, posA.y, posB.x, posB.y); 
}
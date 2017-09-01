PVector posA, posB, posC;

void setup(){
  size(800, 800);
  background(0);
  frameRate(50);
  rotate(radians(90));
  posA = new PVector();
  posB = new PVector();
  posC = new PVector();
  
}

void draw(){
  float r1 = 300;
  float speed1 = frameCount/100.0 * 2;
  
  posA.x = r1 * cos(speed1);
  posA.y = r1 * sin(speed1);
  
  float r2 = 150;
  float speed2 = frameCount/100.0;  
  
  posB.x = r2 * cos(speed2);
  posB.y = r2 * sin(speed2);
  
  float r3 = 225;
  float speed3 = frameCount/100.0 * 5;

  posC.x = r3 * cos(speed3);
  posC.y = r3 * sin(speed3);
  
  
  translate(width/2, height/2);
  stroke(100,100,233,50);
  line(posA.x, posA.y, posB.x, posB.y);
  stroke(33,140,3,50);
  line(posB.x, posB.y, posC.x, posC.y);
  stroke(145,40,33,50);
  line(posC.x, posC.y, posA.x, posA.y);
}
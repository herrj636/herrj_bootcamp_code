void setup(){
  size(700, 400);
  frameRate(30);
}

void draw(){
  background(255);
  fill(0);

for(int i = 0; i <= 8; i++){
float h = sin(i/2.0 + frameCount/6.0) * 100;
println("frameCount: " + frameCount);
println("This is i: " + i);
println("This is h: " + h);
ellipse(i*100, 200+h, 80, 80);
}
}
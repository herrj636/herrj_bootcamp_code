void setup(){
  size(500, 500);
  noStroke();
  smooth();
  frameRate(5);
}

void draw(){
  for(int x = 0; x<= width; x+=20){
    for(int y=0; y<= height; y+=20){
      randomColor();
      ellipse(x, y, 40, 40);
    }
  }
}

void randomColor(){
  fill(int(random(100, 230)), int(random(255)), int(random(150, 255)), 150);
}
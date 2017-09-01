

MRect rect1, rect2, rect3, rect4;


void setup(){
  size(600,600);
  noStroke();

//MRect(float _xpos, float _ypos, int _width, float _height, float _dist, float num)
  rect1 = new MRect(134.0, 0.1*height, 20, 0.532, 100.0, 4.0);
  rect2 = new MRect(44.0, 0.3*height, 2, 0.166, 5.0, 50.0);
  rect3 = new MRect(58.0, 0.4*height, 10, 0.332, 10.0, 35.0);
  rect4 = new MRect(120.0, 0.9*height, 1, 0.498, 15.0, 60.0);

}
void draw(){
  background(0, 100, 200);
  
  rect1.display(color(0, 255, 100));
  rect2.display(color(0, 200, 255));
  rect3.display(color(0, 100, 10));
  rect4.display(color(0, 255, 180));
}
class MRect{
  int w; // single bar width
  float xPos; //rect xPosition
  float h; //rect height
  float yPos; //rect yPosition
  float dist; //single bar distance
  float num; //number of bars
  
  MRect(float _xpos, float _ypos, int _width, float _height, float _dist, float _num){
  xPos = _xpos;
  yPos = _ypos;
  w = _width;
  h = _height;
  dist = _dist;
  num = _num; 
  }
  
  void display(color c){
    fill(c);
    for(int i = 0; i < num; i++){
      rect(xPos + (i * (dist + w)), yPos, w, height*h);
    }
  }
}
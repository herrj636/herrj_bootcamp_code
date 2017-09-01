class MRect{
  int w;
  float xpos;
  float h;
  float ypos;
  float dist;
  float num;
  
 MRect(float x, float y, int _w, float _h, float d, float n){
    xpos = x;
    ypos = y;
    w = _w;
    h = _h;
    dist = d;
    num = n;
  }
  
 void move(float x, float y, float offset){
    float diff = ypos-y;
    
   if (abs(diff)>1){
      ypos -= diff-offset;
    }
    diff = xpos-x;
    if(abs(diff)>1){
      xpos -= diff + offset;
    }
  }
  
 void display(color c){
    fill(c);
    for(int i=0; i<num; i++){
      rect(xpos + (i*(dist + w)),ypos,w,height*h);
    }
  }
  
}
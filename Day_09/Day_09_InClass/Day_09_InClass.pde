MRect r1, r2, r3, r4;

void setup(){
  size (600,600);
  noStroke();
  
//MRect(float x, float y, int _w, float _h, float d, float n){

  r1=new MRect(134.0, 0.1* height,20,0.532,100.0,4.0);
   r2=new MRect(44.0, 0.3* height,2,0.166,5.0,50.0);
   r3=new MRect(58.0, 0.4* height,10,0.332,10.0,50.0);
   r4=new MRect(120.0, 0.9* height,1,0.498,15.0,60.0);
  
 }

void draw(){
   background(0,100,200);
  
   r1.display(color(0,255,100));
   r2.display(color(0,200,255));
   r3.display(color(0,100,10));
   r4.display(color(0,255,180));
  
   r1.move(mouseX, mouseY,50);
   r2.move((mouseX+(width*0.05))%width,mouseY+(height*0.025),20);
   r3.move(mouseX/4,mouseY-(height*0.025),-40);
   r4.move(mouseX-(width/2),(height-mouseY),-100);
  
 }
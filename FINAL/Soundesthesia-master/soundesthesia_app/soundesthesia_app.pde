//COMBINING SHAPES

import ddf.minim.*;

Minim minim;
AudioInput in;
AudioRecorder recorder;

int ellipse;
int stroke;
int line;
int rect;
int getVolume;
int i;
int bufferSize;
//float limiter = 0;

void setup() 
{
  size(800, 600);
  frameRate(90);
  minim = new Minim(this);

  in = minim.getLineIn();
  // create a recorder that will record from the input to the filename specified
  // the file will be located in the sketch's root folder.
  recorder = minim.createRecorder(in, "myrecording.wav");
  background(0);
  smooth();
  //fill(random(255), random(255), random(255), random(255));
  //noStroke();
}
 
void draw() 
{
 /*
  while(limiter < 100) {
  float x = random(width);
  float y = random(height);
  float d = random(20, 200);
  ellipse(x, y, d, d);
  limiter += random(-1, +2);
  }
  //ellipse(56, 46, 55, 55);*/
//saveFrame("frames/####.png");

//line by default
for(int i = 0; i < in.bufferSize() - 1; i++)
  {
   //ellipse(i, 50 + in.left.get(i)*50, i+1, 50 + in.left.get(i+1)*50);
   strokeWeight(2);
   line(i, 300 + in.right.get(i)*300, i+1, 300 + in.right.get(i+1)*300);
   stroke(random(255), random(255), random(255), random(255));
  }
  
  if (key == CODED) {
   if (keyCode == RIGHT) {
     //rect
     for(int i = 0; i < in.bufferSize() - 1; i++) {
       rect(i, 200 + in.right.get(i)*300, i+1, 200 + in.right.get(i+1)*300);
       fill(random(255), random(255), random(255), random(255));
     }
    }else if (keyCode == LEFT) {
      //circle
     for(int i = 0; i < in.bufferSize() - 1; i++) {
       ellipse(i, 300 + in.right.get(i)*200, i+1, 300 + in.right.get(i+1)*200);
        fill(random(255), random(255), random(255), random(255));
    }
   }
}
}
  

 
/*void keyPressed() {
  if (key == CODED) {
   if (keyCode == RIGHT) {
     //rect
     for(int i = 0; i < in.bufferSize() - 1; i++) {
       rect(i, 200 + in.right.get(i)*300, i+1, 200 + in.right.get(i+1)*300);
       fill(random(255), random(255), random(255), random(255)); }
    }else if (keyCode == LEFT) {
     for(int i = 0; i < in.bufferSize() - 1; i++) {
       ellipse(i, 300 + in.right.get(i)*300, i+1, 300 + in.right.get(i+1)*300);
        fill(random(255), random(255), random(255), random(255));
    }
   }
}
}*/
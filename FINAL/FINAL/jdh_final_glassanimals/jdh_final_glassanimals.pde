import ddf.minim.*;

Minim minim;
AudioPlayer player;

float color1 = 35;
float color2 = 45;
float color3 = 65;
float color4 = 75;
float color5 = 20;
float color6 = 10;

float getGain;
int info = 255;
int txt = 100;
PFont computer;
String band = "GLASS ANIMALS"; //INSERT BAND NAME
String place = "COACHELLA 2016 - INDIO, CA"; //INSERT GIG LOCATION
String date = "APRIL 21, 2017"; //INSERT GIG DATE

void setup() {
  background(0);
  size(533, 800);
  minim = new Minim(this);
  computer = createFont ("computer.ttf", 30);
  text("Press 'b' or 'w' to change background", 10, 20);
  text("Press numbers 1-4 to change visualizer colors", 10, 40);

  smooth();
  colorMode(HSB, 100, 100, 100, 200);
  textAlign(CENTER);
  player = minim.loadFile("glassanimals.mp3", 1024);
  player.play();
}

void draw() {
  
  noStroke();
  fill(0, 5);
  pushMatrix();
  translate(width/2, (height/3)+25);
  rotate(radians(frameCount % 360 * 2));
  
  //----------------------
  //Circle 1
  //----------------------
  for (int a = 0; a < 60; a++) {

    if (player.mix.get(a)*200 > 80) {
      stroke(color1, 100, 100,50);
    } else {
      stroke(color2, 100, 100,50);
    }
    line(cos(a)*110, sin(a)*110, cos(a)*abs(player.left.get(a))*300 + cos(a)*110, sin(a)*abs(player.right.get(a))*300 + sin(a)*110);
  }
  
  //----------------------
  //Circle 2
  //----------------------
  for (int b = 180; b > 0; b--) {

    if (player.mix.get(b)*200 > 25) {
      stroke(color3, 100, 100,40);
    } else {
      stroke(color4, 100, 100,40);
    }
    line(cos(b)*95, sin(b)*80, cos(b)*abs(player.left.get(b))*120 + cos(b)*80, sin(b)*abs(player.right.get(b))*120 + sin(b)*95);
  }
  
  //----------------------
  //Circle 3
  //----------------------
  for(int c = 720; c > 0; c--) {

    if(player.mix.get(c)*500 > 25) {
      stroke(color5,100,100,40);
    }
    else {
      stroke(color6,100,100,30);
    }
    line(cos(c)*20, sin(c)*10, cos(c)*abs(player.right.get(c))*180 + cos(c)*20, sin(c)*abs(player.left.get(c))*180 + sin(c)*10);   
  }
  
  
  popMatrix();
  pushMatrix();
  translate(width/2, (height/5)*4);
  fill(txt);
  textFont(computer);
  text(band, 0, 0);
  text(place, 0, 30);
  text(date, 0, 60);
  popMatrix();
}


void keyPressed()
{ 
  //CHANGE BACKGROUND AND TEXT COLOR
  if (key == 'w') {
    background(100);
    txt = 0;
  }
  if (key == 'b') {
    background(0);
    txt = 100;
  }
  
  //VISUALIZATION COLOR
  if (key == '1') {
    color1 = 35;
    color2 = 45;
    color3 = 65;
    color4 = 75;
    color5 = 20;
    color6 = 10;
  }

  if (key == '2') {
    color1 = 35;
    color2 = random(66,100);
    color3 = 65;
    color4 = random(70,100);
    color5 = 20;
    color6 = random(30,80);
  }
  
  if (key == '3') {
    color1 = random(100);
    color2 = random(100);
    color3 = random(100);
    color4 = random(100);
    color5 = random(100);
    color6 = random(100);
  }
  
  //MUSIC PLAYER & PRINTER
  if ( player.isPlaying() && key == ' ' )
  {
    player.pause();
  }
  // if the player is at the end of the file,
  // we have to rewind it before telling it to play again
  else if ( player.position() == player.length() && key == ' ')
  {
    player.rewind();
    player.play();
  } 
  else if (key == 'p') {
  save(band + "gigposter.jpg");
  } else
  {
    player.play();
  }
}
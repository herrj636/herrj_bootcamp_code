//declare canvas
//change color of canvas

//draw circle
//draw square

String printThis = "Your colors are: ";
int r = 200;
int g = 45;
int b = 20;

int radius = 200;
int xPos = 120;
int yPos= 200;

void setup(){
  size(400, 400);
  println("Youre sketch is: ");
  println(width + " x " + height + "pixels");
  
  background(r, g, b);
  println(printThis);
  println(r,g,b);
}

void Draw() {
  noStroke();
  fill(255, 0, 0);
  
  ellipse(xpos, yPos, radius, 50);
}
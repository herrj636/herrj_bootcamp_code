size(300, 300);
background(0);
stroke(255);
strokeWeight(1.0);

final float RES = 1.05; // the line length
float numofCircles = 3.6;
PVector spiralCenter = new PVector(150, 150);

float startRadius = 100;
float endRadius = 20;
float currRadius = startRadius;

float totalRadian = numofCircles * PI * 2;
float startRadian = -PI;
float endRadian = startRadian + totalRadian;
float currentRadian = startRadian;

// This depends on the current radius
float deltaAngle;
// Spiral starts from outside
float lastX = cos(startRadian) * startRadius;
float lastY = sin(startRadian) * startRadius;
float nextX, nextY;

while (currentRadian < endRadian)
{
  deltaAngle = PI * RES / currRadius;
  currentRadian += deltaAngle;
  currRadius = map(currentRadian, startRadian, endRadian, startRadius, endRadius);
 
  nextX = cos(currentRadian) * currRadius;
  nextY = sin(currentRadian) * currRadius;
  line(lastX + spiralCenter.x, lastY + spiralCenter.y,
  nextX + spiralCenter.x, nextY + spiralCenter.y);
  lastX = nextX;
  lastY = nextY;
}
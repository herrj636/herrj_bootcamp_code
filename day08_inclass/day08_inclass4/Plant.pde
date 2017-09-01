class Rabbit {
  //color changes
  //position
  //velocity
  color c;
  PVector position, velocity;
  float w, h;

  Rabbit(float tempX, float tempY, float tempSpeed, color tempColor, float tempW) {
    c = tempColor;
    position = new PVector (tempX, tempY);
    velocity = new PVector (tempSpeed, 0);

    w = tempW;
    h = w/2;
  }

  void move() {
    position.add(velocity);
    if (position.x > width + w/2){
      position.x = -w;
    }
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(position.x, position.y, w, h);
    ellipse(position.x + w/5, position.y - h/2, h/4, w/2);
    ellipse(position.x + w/3, position.y - h/2, h/4, w/2);
  }
}
class Plant {
  float x;
  float plantHeight;
  int leaves;
  color plantColor;

  Plant(float tempX, float tempHeight, int tempLeaves, color tempColor) {
    x = tempX;
    plantHeight = tempHeight;
    leaves = tempLeaves;
    plantColor = tempColor;
  }

  void display() {
    fill(plantColor);
    rect(x, plantHeight, 10, 500);
    for (int i = 0; i < leaves; i++){
      ellipse(x,plantHeight + 30 * i, 50 + i * 5, 20);
    }
  }
}
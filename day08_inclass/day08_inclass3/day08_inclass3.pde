Plant tree1, tree2, tree3, tree4, tree5;

void setup(){
  background(120,200,255);
  noStroke();
  smooth();
  size(700, 500);
  
  //Plant(float tempX, float tempHeight, int tempLeaves, color tempColor
  tree1 = new Plant(140, 100, 5, color(10, 200, 10));
  tree2 = new Plant(210, 80, 5, color(40, 230, 10));
  tree3 = new Plant(233, 90, 5, color(10, 220, 10));
  tree4 = new Plant(300, 130, 5, color(20, 255, 10));
  tree5 = new Plant(350, 100, 5, color(100, 200, 10));
}

void draw(){
  tree1.display();
  tree2.display();
  tree3.display();
  tree4.display();
  tree5.display();
  //tree1.display();
  
  fill(90,230,90);
  rect(0,350,700,150);

}
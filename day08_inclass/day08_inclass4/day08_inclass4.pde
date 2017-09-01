int num = 10;
Rabbit bunny1, bunny2;
Rabbit[] bunnies;

void setup() {
  size(500, 500);
  bunny1 = new Rabbit(0, 200, 1, color(100, 200, 200), 30);
  bunny2 = new Rabbit(0, 100, 2, color(50, 50, 100), 100);

  bunnies = new Rabbit[num];

  for (int i = 0; i < num; i++) {
    bunnies[i] = new Rabbit(0, random(0, height), random(1, 5), color(random(200, 250), random(50, 200), random(0, 100)), random(30, 150));
  }
}

void draw() {
  background(255, 50);
  bunny1.display();
  bunny2.display();
  bunny1.move();
  bunny2.move();


  for (int i = 0; i < num; i++) {
    bunnies[i].display();
    bunnies[i].move();
  }
}
ArrayList<Particle> particles;

void setup() {
  size(500, 500);
  particles = new ArrayList<Particle>();
}


void draw() {
  background(255);
  particles.add(new Particle());

  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).update();
    particles.get(i).display();

    if (particles.get(i).pos.y > height){
      particles.remove(i);
  }
}

  for (int i=0; i<particles.size(); i++) {
    for (int k = 0; k<particles.size(); k++) {
      stroke(0.05, particles.get(i).lifeSpan);

      if (dist(particles.get(i).pos.x, particles.get(i).pos.y, particles.get(k).pos.x, particles.get(k).pos.y)<30) {
        line(particles.get(i).pos.x, particles.get(i).pos.y, particles.get(k).pos.x, particles.get(k).pos.y);
      }
    }
  }
}
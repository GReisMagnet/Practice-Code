
ArrayList<BouncyBall> food = new ArrayList<BouncyBall>();
BlackHole portal;

void setup() {
  size(800, 600);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  portal = new BlackHole();
}

void draw() {
  background(0);
  portal.display();
  if (mousePressed) {
    food.add(new BouncyBall(random(5, 30), random(.1, 5)));
  }
  for (int i = 0; i < food.size (); i++) {
    BouncyBall b = food.get(i);
    b.display();
    b.move();
    b.isSuckedIn(portal);

    if (portal.consumes(b)) {
      food.remove(i); 
      portal.grow();
    }
  }
}

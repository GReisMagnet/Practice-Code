ArrayList<Coin> bling = new ArrayList<Coin>();
ArrayList<Rainbow> colours = new ArrayList<Rainbow>();
CenterOfGravity point1;
CenterOfGravity point2;
void setup() {
  size(800, 600);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  point1 = new CenterOfGravity(width/2-130,height + 50);
    point2 = new CenterOfGravity(width/2+130,height +50);
}

void draw() {
  background(0);
  bling.add(new Coin(random(5, 30), random(.1, 5)));
  colours.add(new Rainbow());
  for (int i = 0; i < bling.size (); i++) {
    Coin b = bling.get(i);
    Rainbow r = colours.get(i);
    b.display();
    b.move();
    b.pull(point1);
    r.display();
    r.move();
    r.pull(point2);
  }
  PImage img;
  img = loadImage("goldpot.png");
  image(img, width/2-200, height-130, 150, 150);
}


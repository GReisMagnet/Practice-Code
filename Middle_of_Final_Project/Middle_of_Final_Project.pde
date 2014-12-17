
ArrayList<Coin> bling = new ArrayList<Coin>();
CenterOfGravity portal;
void setup() {
  size(800, 600);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  portal = new CenterOfGravity();
}

void draw() {
  background(0);
  portal.display();
  bling.add(new Coin(random(5, 30), random(.1, 5)));
  PImage img;
  img = loadImage("goldpot.png");
    for (int i = 0; i < bling.size (); i++) {
      Coin b = bling.get(i);
      b.display();
      b.move();
      b.pull(portal);
    }
    if(coin.check()){
    b.remove(i);
    }
  image(img, width/2-200, height-130, 150, 150);
}


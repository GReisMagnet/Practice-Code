ArrayList <ball> gravity = new ArrayList<ball>();
int maxBalls = 10;
void setup() {
  size(800, 600);
  textSize(50);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {

  gravity.add(new ball());
  background(0);
  fill(255, 0, 0);

  for (int i = 0; i < gravity.size (); i++) {
    ball b = gravity.get(i);   

    b.display(i*5.14);
    b.move();
    b.bounce();
  }
  fill(255);
  gravity.remove[0];
}


//if (gravity)
//gravity.remove(0);
//}



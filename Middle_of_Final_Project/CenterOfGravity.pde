class CenterOfGravity {
  PVector loc;
  float sz;
 float colour = 0;

  CenterOfGravity() {
    loc = new PVector(width/2-130, height + 50);
    sz = 20;
  }

  void display() {
    fill(colour);
    ellipse(loc.x, loc.y, sz, sz);
  }
}


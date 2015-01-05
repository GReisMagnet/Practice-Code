class CenterOfGravity {
  PVector loc;
  float sz;
 float colour = 0;

  CenterOfGravity(float x, float y) {
    loc = new PVector(x, y);
    sz = 20;
  }

  void display() {
    fill(colour);
    ellipse(loc.x, loc.y, sz, sz);
  }
}


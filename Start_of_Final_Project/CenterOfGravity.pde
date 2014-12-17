class CenterOfGravity {
  PVector loc;
  float sz;
 float colour = 0;

  CenterOfGravity() {
    loc = new PVector(random(width), random(height));
    sz = 20;
  }

  void display() {
    fill(colour);
    ellipse(loc.x, loc.y, sz, sz);
  }
}


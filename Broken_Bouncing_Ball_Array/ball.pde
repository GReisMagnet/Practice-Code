class ball {
  float sz;
  PVector loc, vel, acc;
  ball() { 
    sz = 50;
    loc = new PVector(random(width)+sz, random(width)-sz);
    vel = new PVector(random(-5, 5), random(-5, 5));
    acc = new PVector(random(-.5, .5), random(-.5, .5));
  }

  void display(float hue) {
    fill(hue, 100, 100);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
  }
  void bounce() {

    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      loc.y = height-sz/2;
      vel.y *= -1;
    }
    if (loc.x+sz/2 >width || loc.x-sz/2 <0) {      
      vel.x *= -1;
    }
  }
  void acc() {
    vel.add(acc);
  }
  void collideWith(ball other) {
    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
      vel = PVector.sub(loc, other.loc);
      vel.normalize();
      vel.setMag(1);
    }
  }
}



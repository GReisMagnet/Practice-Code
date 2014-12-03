ball gravity;

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  gravity = new ball();
}
void draw() {
  background(0);
   fill(frameCount%360, 100, 100);
  gravity.display();
  gravity.move();
  gravity.bounce();
    gravity.acc();
 
}

class ball {
  float sz;
  PVector loc, vel, acc;
  ball() { 
    sz = 50;
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 5);
      acc = new PVector(0, .5);
  }

  void display() {
    ellipse(width/2, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
  }
  void bounce() {
//    if (loc.x+sz/2 >width || loc.x-sz/2 <0) {
//      vel.x *= -1;
//    }
     if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
loc.y = height-sz/2;
       vel.y *= -.9;
  }
  }
    void acc() {
    vel.add(acc);
  }

}


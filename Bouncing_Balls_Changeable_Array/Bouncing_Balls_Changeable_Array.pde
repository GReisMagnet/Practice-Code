ball [] gravity = new ball[70];

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  for(int i = 0; i < gravity.length; i++){
  gravity[i] = new ball();
  }
}
void draw() {
  background(0);
   for (int i = 0; i < gravity.length; i++) {
  gravity[i].display(i*5.14);
  gravity[i].move();
  gravity[i].bounce();
  gravity[i].acc();
   }
}

class ball {
  float sz;
  PVector loc, vel, acc;
  ball() { 
    sz = 50;
    loc = new PVector(random(width/2-80,width/2+80),random(height/2));
    vel = new PVector(5, 5);
      acc = new PVector(-.3, .3);
  }

  void display(float hue) {
       fill(hue, 100, 100);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
  }
  void bounce() {
   if (loc.x+sz/2 >width || loc.x-sz/2 <0) {

     vel.x *= -1;
     acc.x *= -.2;
    }
     if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
loc.y = height-sz/2;
       vel.y *= -1;
  }
  }
    void acc() {
    vel.add(acc);
  }

}



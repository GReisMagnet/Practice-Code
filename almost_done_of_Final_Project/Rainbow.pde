 class Rainbow {
   PVector loc, vel, acc;
  float sz;
  float speed;
  float colour;
  float x,y,p;
   Rainbow() {
    sz = 30;
    speed = 2;
    p = .009;
    colour = 360;
    x = width/2-130;
    y = height-110;
    loc = new PVector(width/2-130,height-110);
    vel = new PVector(.04,-.125);
    acc = new PVector(.04,-.125);
    vel.setMag(speed);
  }
    void display() {
    noStroke();
        fill(colour,100,100,5);
    ellipse(loc.x,loc.y,sz,sz);
    if(loc.x>width){
loc.x = x;
loc.y = y;
colour -= 40;
speed = 2;
   vel = new PVector(.04,-.125);
    vel.setMag(speed);
    p -= .0005;
    x+= 20;
}
    }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void pull(CenterOfGravity gravity) {
    acc = PVector.sub(gravity.loc, loc);
    acc.setMag(p);
  }
 }


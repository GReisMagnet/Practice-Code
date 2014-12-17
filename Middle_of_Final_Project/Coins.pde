 class Coin {
  PVector loc, vel, acc;
  float sz;
  float speed;
  float hue;
  float trans= 100;
  boolean life;
 Coin(float tempsz, float tempspeed) {
    sz = tempsz;
    speed = tempspeed;
    loc = new PVector(width/2-130,height-110);
    vel = PVector.random2D();
    acc = new PVector(random(-1,1),random(-6,-10));
    vel.setMag(speed);
    hue = random(360);
  }

  void display() {

    noStroke();
        fill(62, 99, 44, trans);
    ellipse(loc.x,loc.y,sz+4,sz+4);
     fill(70, 100, 100, trans);
    ellipse(loc.x, loc.y, sz, sz);
    trans -= .8;
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void wallBounce() {
    if (loc.x + sz/2 > width) {
      vel.x = -abs(vel.x);
    } 
    if (loc.x - sz/2 < 0) {
      vel.x = abs(vel.x);
    }
    if (loc.y + sz/2 > height) {
      vel.y = -abs(vel.y);
    }
    if (loc.y - sz/2 < 0) {
      vel.y = abs(vel.y);
    }
  }

  void collideWith(Coin other) {
    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
      vel = PVector.sub(loc, other.loc);
      vel.setMag(speed);
    }
  }
  boolean check() {
    if ( trans < 1){
return true;
    }
    else{
    return false;
  }
  }

  void pull(CenterOfGravity gravity) {
    acc = PVector.sub(gravity.loc, loc);
    acc.setMag(.07);
  }
}


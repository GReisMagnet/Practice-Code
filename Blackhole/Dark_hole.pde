class BlackHole {
  PVector loc;
  float sz;
 float colour = 0;

  BlackHole() {
    loc = new PVector(random(width), random(height));
    sz = 20;
  }

  void display() {
    fill(colour);
    ellipse(loc.x, loc.y, sz, sz);
  }

  boolean consumes(BouncyBall food) {
    if (loc.dist(food.loc) < sz/2 + food.sz/2) {
      return true;      
    }
    else{
     return false; 
    }
  }
  
  void grow(){
   sz+=2;
  colour += 1; 
  }
}


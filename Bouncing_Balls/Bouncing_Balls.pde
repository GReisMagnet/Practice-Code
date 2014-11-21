float sz, sz2;
PVector loc, vel, acc, loc2, vel2, acc2;

void setup(){
  size(600,800);
loc = new PVector(width/2, height/2);loc2 = new PVector(width/4, height/4);
  sz =  80;
  vel = PVector.random2D();
  acc = new PVector(0,0);
    vel2 = PVector.random2D();
  acc2 = new PVector(0,0);
}
void draw(){
  background(0);
  vel.add(acc);
  loc.add(vel);
  vel2.add(acc2);
  loc2.add(vel2);
  ellipse(loc.x,loc.y,sz,sz);
    ellipse(loc2.x,loc2.y,sz,sz);
    
    
  if (dist(mouseX,mouseY,loc.x,loc.y) < sz/2){
  if ( mouseY <loc.y +sz/2  ){
     vel.y *= -1;    vel.x *= -1;
   }
     if ( mouseY > loc.y + sz/2 ){
       vel.y *= 1;    vel.x *= -1;
     }
  }
  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 <0 ) {
    vel.y *= -1;
  }
  
  
  
    if (dist(mouseX,mouseY,loc2.x,loc2.y) < sz/2){
    if(mouseX < loc2.x + sz/2 ){
      vel2.x *= -1;}
   if(mouseX > loc2.x + sz/2){
   vel2.x *= 1;
   }
  if ( mouseY <loc2.y + sz/2 ){
     vel2.y *= -1;}
     if ( mouseY > loc2.y + sz/2 ){
       vel2.y *= 1;
     }
  }
  if (loc2.x + sz/2 > width || loc2.x - sz/2 < 0) {
    vel2.x *= -1;
  }
  if (loc2.y + sz/2 > height || loc2.y - sz/2 <0 ) {
    vel2.y *= -1;
  }
  
  
  if (dist(loc.x,loc.y,loc2.x,loc2.y) < sz){
  vel2.y *= -1;
  vel.y *= -1;
    vel2.x *= -1;
  vel.x *= -1;
  }

  ellipse(mouseX, mouseY, 20, 20);
}


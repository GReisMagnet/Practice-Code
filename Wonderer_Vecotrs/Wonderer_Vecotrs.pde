PVector loc;
PVector vel;
PVector acc;
int size = 50;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 600);
loc = new PVector(width/2,height/2);
vel = new PVector(0,0);
acc = new PVector(random(-.1,.1),random(-.1,.1));
}
void draw() {
  acc.set(random(-.1,.1),random(-.1,.1));
vel.add(acc);
vel.limit(3);
loc.add(vel);
  fill(frameCount%360, 100, 100);
  stroke(frameCount%360, 100, 50);
  ellipse(loc.x, loc.y, size, size);


  if (loc.x - size/2 > width) {      
    loc.x = -size/2;
  }
  if (loc.x + size/2 < 0) {          
    loc.x = width + size/2;
  }
  if (loc.y - size/2 > height) {   
    loc.y = -size/2;
  }
  if (loc.y + size/2 < 0) {          
    loc.y = height + size/2;
  }
}


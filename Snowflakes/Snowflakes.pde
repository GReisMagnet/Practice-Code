
int count = 200;
PVector[] loc = new PVector[count];
PVector[] vel = new PVector[count];
PVector[] acc = new PVector[count];
float[] sz = new float[count];

void setup() {
  size(1000, 600);
  for ( int i=0; i<count; i++) {
    sz[i] = random(2, 8);    
    loc[i] = new PVector(random(width), random(-height, -sz[i]/2));    
    vel[i] = new PVector(0, random(1));
    acc[i] = new PVector(0, .01);
  }
  noStroke();
  fill(255, 150);
}
void draw() {
  background(20, 0, 50);
  for (int i = 0; i < count; i++) {

    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    vel[i].limit(2);

    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);

    acc[i].x = random(-.1, .1);

    if (loc[i].y - sz[i]/2 > height) {
      loc[i].set(random(width), random(-height, -sz[i]/2));
      vel[i].set(0, 1);
    }
  }
}


float locx, locy;  
float velx, vely;       
float accx, accy;      
int size = 50;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 600);
  locx = width/2;
  locy = height/2;
  velx = 0;
  vely = 0;
  accx = random(-.1, .1);
  accy = random(-.1, .1);
}
void draw() {
  accx = random(-.1, .1);
  accy = random(-.1, .1);
  fill(frameCount%360, 100, 100, 7);
  stroke(frameCount%360, 100, 50);
  velx = velx +accx;
  vely = vely + accy;
  velx = constrain(velx, -5, 5);
  vely = constrain(vely, -5, 5);
  locx =  locx + velx;
  locy = locy + vely;
  ellipse(locx, locy, size, size);


  if (locx - size/2 > width) {      
    locx = -size/2;
  }
  if (locx + size/2 < 0) {          
    locx = width + size/2;
  }
  if (locy - size/2 > height) {   
    locy = -size/2;
  }
  if (locy + size/2 < 0) {          
    locy = height + size/2;
  }
}


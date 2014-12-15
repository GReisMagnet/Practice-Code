int count = 50;
int[] x = new int[count];
int[] y = new int[count];

void setup() {
  size(1000, 1000);

  fill(255, 20);
  for (int i = 0; i<count; i++) {
    x[i]= width/2;
    y[i]= height/2;
  }
}

void draw() {

  background(0);
  x[49] = mouseX;
  y[49] = mouseY;
  for (int i = 0; i<count-1; i++) {
    x[i]=x[i+1];
    y[i]=y[i+1];
  }
  for (int i = 49; i >= 0; i--) {

    ellipse(x[i], y[i], i*2, i*2);
  }
}

void mousePressed() {
  background(255); 
  fill(random(255),random(255),random(255), 20);
}



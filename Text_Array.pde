String[] nameArray = {
  "Gabe's", "code", "is", "better", "than", "Banek's"
};
int x=0;
float y=0;
float i = 0;
int colour = 0;
void setup() {
  size(500, 500);
  background(0);
}
void draw() {

  text(nameArray[x%6], i, y*10+10);
  x++;
  y++;

  fill(random(255), random(255), random(255)); 
  if (y>width/10) {
    i= i+50;
    y=0;
  }
}
void mousePressed() {
}


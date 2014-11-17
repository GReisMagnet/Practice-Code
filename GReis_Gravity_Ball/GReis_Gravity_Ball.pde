float locx,locy;
float velcrox,velcroy;
float gravy;
float sz = 50;
void setup(){
 size(800,600);
 locx= width/2;
 locy= height*.1;
 velcrox= 0;
 velcroy= 0;
 gravy = .4;
}
void draw(){
  background(0);
  ellipse(locx,locy,sz,sz);
  velcroy += gravy;
  locx += velcrox;
  locy += velcroy;
  
  if (locy + sz/2 > height){
    locy = height-sz/2;
    velcroy *=-.7;
  }
}



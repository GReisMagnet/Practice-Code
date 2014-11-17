float locx,locy;
float velcrox,velcroy;
float gravy,wind;
float windC=0;
float sz = 80;
void setup(){
 size(800,600);
 locx= width/2;
 locy= height*.1;
 velcrox= 3;
 velcroy= 0;
 gravy = .05;
}
void draw(){
  background(0);
  ellipse(locx,locy,sz,sz);
  velcroy += gravy;
  velcrox += wind;
  locx += velcrox;
  locy += velcroy;
wind = windC;  
  if (locy + sz/2 > height){
    locy = height-sz/2;
    velcrox *= .9;
    velcroy *=-.7;
  }
  if(locx+sz/2 > width || locx - sz/2 <0){

    velcrox *= -1;
  }
}
void keyPressed(){
 if( key == '=' ){
windC+=.01;
} 
   if(key == '-'){
windC-=.01;
} 
}



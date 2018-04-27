PImage smaller;
PImage coa;

int scl=8;
int w,h;
void setup(){
  size(700,700);
  coa=loadImage("coa.png");
  
  w=coa.width/scl;
  h=coa.height/scl;
  smaller=createImage(w,h,RGB);
  smaller.copy(coa, 0,0,coa.width, coa.height,0,0,w,h);
  
}

void draw(){
  smaller.loadPixels();
  for(int x=0; x<w; x++){
    for(int y=0; y<h; y++){
      int index=x+y*w;
      color c=smaller.pixels[index];
  }
  //image(coa,0,0);
  //image(smaller,0,0);
  noLoop();
}

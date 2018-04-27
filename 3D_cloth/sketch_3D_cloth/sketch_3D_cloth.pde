PImage coa;
float x=200;
float y=200;

void setup(){
 size(800, 600, P2D);
 coa=loadImage("coa.png");
}

void draw(){
  background(51);
  stroke(255);
  strokeWeight(2);
  noFill();
  textMode(NORMAL);
  beginShape(TRIANGLE_STRIP);
  texture(coa);
  for(float x=10; x<500; x+=50){
    vertex(x, 200);
    vertex(x, 250);
  }
  endShape();
  
  //stroke(255);
  //fill(127);
  //beginShape();
  //texture(coa);
  //vertex(x,y,0,0);
  //vertex(300,200,600,0);
  //vertex(300,300,600, 600);
  //vertex(200,300,0,600);
  //endShape(CLOSE);
  
  //x+=random(-5,5);
  //y+=random(-5,5);
}

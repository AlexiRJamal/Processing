float r1=100;
float r2=100;
float m1=10;
float m2=10;
float a1=0;
float a2=0;

void setup(){
  size(600,600);
}

void draw(){
  background(255);
  stroke(0);
  strokeWeight(2);
  
  translate(300, 50);
  
  float x1=r1*sin(a1);
  float y1=r1*cos(a1);
  
  float x2=x1+r2*sin(a2);
  float y2=y1+r2*cos(a2);
  
  line(0,0,x1,y1);
  ellipse(x1,y1,m1,m1);
}

float n=0;
float d = 0;
PImage img;
void setup(){
fullScreen();
colorMode(HSB,360,100,100,100);
img = loadImage("back.jpeg");
image(img,0,0);
}
void draw(){

}
void mouseClicked(){
  n = random(1,25);
  d = random(10,200);
  println(n + " " + d);
  
//background(0, 0, 7);
image(img,0,0);
translate(width/2, height/2);
noFill();
stroke(random(0,360), 100,100);
strokeWeight(1);
beginShape();
for (int angle = 0; angle<360; angle++){
  float k = angle*d*PI/180;
  float r = 400*sin(n*k);
  float x  = r * cos(k);
  float y  = r * sin(k);
  
  curveVertex(x,y);
  
}
endShape();
//saveFrame("output/rose_####.png");
}

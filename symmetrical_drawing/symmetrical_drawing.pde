void setup(){
  fullScreen();
  colorMode(HSB,360,100,100);
  background(360,100,0);
}
void draw(){
  //translate(width/2, height/2);
  noStroke();
  fill(frameCount%360,100,100);
}
void mouseDragged(){
  //circle(mouseX,mouseY,10);
  //circle(-mouseX,mouseY,10);
  //circle(mouseX,-mouseY,10);
  //circle(-mouseX,-mouseY,10);
  circle(mouseX,mouseY,10);
  circle(width-mouseX,mouseY,10);
  circle(mouseX,height-mouseY,10);
  circle(width-mouseX,height-mouseY,10);
}
void keyPressed(){
  if (key==' '){
    background(360,100,0);
  }
}

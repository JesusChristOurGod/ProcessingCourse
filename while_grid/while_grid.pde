float x  = 0;
float y = 0;
float spacing;
void setup(){
  size(600,600);
  spacing = random(0,50);
  colorMode(HSB, 360,100,100);
  stroke(random(360),100,100);
}
void draw(){
  background(360,100,0);
  while(x<mouseX){
    line(x,0,x,height);
    x+=spacing;
  }
  while (y<mouseY){
    line(0,y,width,y);
    y+=spacing;
  }
  x = 0;
  y = 0;
}

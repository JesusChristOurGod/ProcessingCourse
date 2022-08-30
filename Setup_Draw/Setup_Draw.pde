int positionX = 0;
int positionY = 0;
int col = 0;
int rad = 10;
void setup() {
  size(600,600);
  background(255,0,255);
}
void draw(){
  background (255, 0, col);
  col = col+ 1;
  rad = rad+1;
  positionX = positionX+1;
  positionY = positionY+2;
  
  circle(positionX,positionY,rad);
  circle(positionX+100,positionY+300,rad);
}

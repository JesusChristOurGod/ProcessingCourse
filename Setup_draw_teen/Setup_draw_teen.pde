int x = 0;
int y = 0;
float angle = 0;
int rad = 10;
void setup() {
  size(600,600);
  background(0,166,238);
}

void draw() {
  background(0,166,238);
 
  fill(0,255,0);
  circle(x, y, rad);
  rad = rad + 1;
  x = x + 2;
  y = y + 4;
  
  translate(300,300);
  rotate(angle);
  fill(153,76,0);
  rect(0, -10,100,20);
  fill(96,96,96);
  rect(100,50,50,-100,5);
  angle = angle + PI / 90.0;
}

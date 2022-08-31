int x = 300;
int y = 300;
int or = 1;
int speed = 5;

void setup() {
  size(600, 600);
  background(0,0,0);

}

void draw() {
  background(0,0,0);
  int xn = x;
  int yn = y;
  int orn = -or;
  
  while(xn > 0) {
    strokeWeight(4);
    stroke(color((float)xn / (float)x * 255, (float)(yn - 200) / 200.0 * 255 , (1.0 - (float)xn / (float)x) * 255));
    if(yn >= 400 || yn <= 200) orn = -orn;
    line(xn, yn, xn - 1, yn + orn * speed);
    xn = xn - 1;
    yn = yn + orn * speed;
    
  }
  fill(color(255,255,255));
  noStroke();
  circle(x, y, 15);
  y = y + speed * or;

  if(y >= 400 || y <= 200) {
    or = -or;
  }
  
}

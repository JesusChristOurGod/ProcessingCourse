int k = 0;
int d = 35;
void setup() {
  size(700, 700);
  colorMode(HSB,360,100,100);
}
void draw() {
  background(0,0,0);
  for(int i = 0; i < width/d; i++) {
    for(int j = 0; j < height/d; j ++) {
      fill((i*36-j*10+k)%360,60, 90);
      circle(d/2+i*d,d/2+j * d, d);
    }
  }
  k+=1;
}

int[] values = new int[10];
int x = 10;
void setup(){
  size(600,600);
  colorMode(HSB,360,100,100);
  background(360,100,0);
  noStroke();
  for (int i=0; i<values.length;i++){
    values[i] = int(random(0,height-100));
    fill(random(0,360),80,80);
    rect(x,height,40,-values[i]);
    x+=60;
  }
}

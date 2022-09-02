float[] values = new float[10];
float sum = 0;
float col = random(360);
float angle =0;
int x = 600;
void setup(){
  size(1200,800);
  colorMode(HSB,360,100,100);
  background(360,100,0);
  noStroke();
  for (int i =0; i<values.length;i++){
    values[i] = random(0,300);
    sum+=values[i];
  }
  for (int i=0; i<values.length;i++){
    fill(col,80,80);
    col = (col+30)%360;
    arc(300,400,400,400,angle,angle+radians(map(values[i]/sum*100,0,100,0,360)));
    angle += radians(map(values[i]/sum*100,0,100,0,360));
    rect(x,height-300,40,-values[i]);
    x+=60;
  }
}

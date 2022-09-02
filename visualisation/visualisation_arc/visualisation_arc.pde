float[] values = new float[10];
float sum = 0;
float col = random(360);
float angle =0;
void setup(){
  size(600,600);
  colorMode(HSB,360,100,100);
  background(360,100,0);
  noStroke();
  translate(width/2, height/2);
  for (int i =0; i<values.length;i++){
    values[i] = random(0,300);
    sum+=values[i];
  }
  for (int i=0; i<values.length;i++){
    fill(col,80,80);
    col = (col+30)%360;
    arc(0,0,400,400,angle,angle+radians(map(values[i]/sum*100,0,100,0,360)));
    angle += radians(map(values[i]/sum*100,0,100,0,360));
    
  }
}

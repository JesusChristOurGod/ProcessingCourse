int[] values ;
int buf = 0;
void setup(){
  size(600,600);
  colorMode(HSB,360,100,100);
  values = new int[width];
  for(int i= 0; i<width; i++){
    values[i] = (int(random(0,height)));
  }
}
void draw(){
  background(360,100,0);
  strokeWeight(10);
  for (int i= 0; i<width-1; i++){
    stroke(map(values[i],0,height,0,360),100,100);
    line(i,height,i,height-values[i]);
    if (values[i+1]<values[i]){
      buf = values[i+1];
      values[i+1] = values[i];
      values[i] = buf;
    }
  }
}

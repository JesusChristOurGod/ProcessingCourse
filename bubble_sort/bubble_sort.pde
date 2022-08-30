float values [];
int i =0;
int j =0;
void setup () {
  size (600, 600);
  values = new float[width];
  for (int i=0; i<values.length; i++){
    values[i] = i;
  }
  for (int i=0; i<values.length; i++){
    float buf = 0;
    int rng = 0;
    buf = values[i];
    rng = int(random(values.length));
    values [i] = values[rng];
    values[rng] = buf;
    
    
  }
}
void draw() {
  
  background(0);
  
  for (int i=0; i<values.length; i++){
    line (i, height, i, height -values[i]);
    stroke(200,150,i*0.65);
  }
  float buffer = 0;
  if (j<values.length){
    for (int i=0; i<values.length-j-1; i++){
      if (values[i]>values[i+1]) {
        buffer = values[i];
        values[i]=values[i+1];
        values[i+1] = buffer;
      }
    }
  } else {
    noLoop();
  }

  
  
}

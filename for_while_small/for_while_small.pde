int k = 0;
boolean orient = true;

void setup() {
  size(700, 700);
  frameRate(60);
  background(0,0,0);
}

void draw() {
  
  background(0,0,0);
  
  for(int i = 0; i < 10; i++) {
    for(int j = 0; j < 10; j ++) {
      fill(color(25.5  * i,25.5 *j, k));
      circle(35.5 + i*70, 35.5 + j * 70, 70);
    }
  }
  
  if(orient) k += 1;
  else k -= 1;
  if(k > 255 || k < 0) orient = !orient ;
  
  

}

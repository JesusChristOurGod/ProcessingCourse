class Planet{
  float x;
  float y;
  float r;
  float speed;
  float col;
  float i;
  float d;
  Planet(float d, float speed, float col, float r){
    this.d = d;
    this.speed = speed;
    this.r = r;
    this.col = col;
  }
  void move(){
    i+=speed;
    x = d*cos(i%360);
    y = d*sin(i%360);
  }
  void display(){
    fill(col,100,100);
    circle(x,y,r);
  }

}

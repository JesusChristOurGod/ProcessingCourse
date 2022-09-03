class Particle{
  float x;
  float y;
  float vy;
  float vx;
  Particle(){
    x=random(0,width);
    y = random(0,height);
    vx = random(-3,3);
    vy = random(-3,3);
  }
  void move(){
    if (x>width||x<0){
      vx=vx*-1;
    }
    if (y>height||y<0){
      vy=vy*-1;
    }
    x = x+vx;
    y = y+vy;
  }
  void display(){
    color c = kitten.get(int(x),int(y));
    fill(c);
    circle(x,y,10);
  }

}

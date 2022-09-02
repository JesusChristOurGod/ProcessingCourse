class Drop{
  float x;
  float y;
  float col;
  float len;
  float w;
  float speed;
  Drop(){
    y = random(0, height);
    x = random(0,width);
    col = random(270,330);
    len = random(10,40);
    w = random(1,5);
    speed = random(2,3);
  }
  void move(){
    y+=speed;
    if (y>=height){
      y = -len;
      x = random(0 , width);
      speed = random(2,3);

    }
  }
  void display(){
    strokeWeight(w);
    stroke(col, 90,90);
    line(x,y,x,y+len);
  }
  
}

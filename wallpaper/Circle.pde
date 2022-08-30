class Circle{
  float x;
  float y;
  color clr;
  String growing;
  float rad;
  float vx;
  float vy;
  float brightness;
  float hue;
  float sat;
  float transp;
  Circle(){
    x = random(0,width);
    y = random(0,height);
    transp = 50;
    brightness = random(60,80);
    hue = random(0,360);
    sat = random (60,80);
    clr = color(hue,sat,brightness ,transp);
    rad = random(30,100);
    vx = random(-0.3,0.3);
    vy = random(-0.3,0.3);
    growing = "nope"; //nope это не изменяем размер
  }
  void move(){ //двигаем круги и заставляем их отталкиваться от стен
    x = x+vx;
    y= y+vy;
    if (x>=width||x<=0){
      vx*=-1;
    }
    if (y>=height||y<=0){
      vy*=-1;
    }
  }
  void display(){ //рисуем круги
    noStroke();
    clr = color(hue,sat,brightness ,transp);
    fill(clr);
    circle(x,y,rad);
  }
  void grow(){
    if(int(random(1,250)) == 1 && growing=="nope"){ //если круг не растет, он может начать расти
      growing="higher";
      
    }
    if (growing=="higher" && rad<=120){ //круг растет до определенного значения
        rad+=0.1;
    }
    if (rad>=100){ //если уже большой, то начинаем его прятать
      transp-=0.5;
    }
    if (transp<=1){ //если круг спрятался, то нужно его телепортировать и создать заново
      transp = 0;
      rad = random(3,27);
      x = random(0,width);
      y= random(0,height);
    }
    if (rad<30){ //если круг еще маленький, он должен расти по-другому
      growing = "lower";
    }
    if(growing=="lower"){ //круг растет, пока не станет прозрачным на 50%
      rad+=0.1;
      while(transp<50){
        transp+=0.5;
      }
      if (transp>=48){
        growing="nope";
      }
      
    }
  }
  
}

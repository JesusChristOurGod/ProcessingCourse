int radius = 80;
void setup () {
  size (800,800);
  
}
void draw(){
  background (0);
  translate (height/2, width/2);
  stroke(30,250,90);
  line(-width,0,width,0);
  line(0,height,0, -height);
  stroke(255);
  
  for (float i = -width/2; i<width/2; i=i+0.001){
    //point(i,i);//линия
    //point(i, -pow(i,2)/100); //парабола
    //point(i, -pow(i,3)*0.001); //куб
    //point(i, sin(0.03*i)*300); //синусоида
    //point(i, 10*log(i));//натуральный логарифм
    //point(i, -0.1*exp(0.04*i)); //экспонента
    point(i, -sqrt(50*i)); //квадратный корень
    //point(i, 100*tan(0.1*i)); //тангенс
    //point(i, sqrt(radius*radius-i*i));нижний полукруг
    //point(i, -sqrt(radius*radius-i*i)); верхний полукруг

  }
}

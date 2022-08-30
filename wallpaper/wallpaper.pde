ArrayList<Circle> circles; //создаем массив кругов
void setup(){
  //size(400,700);
  fullScreen();
  colorMode(HSB,360,100,100,100);
  circles = new ArrayList<Circle>(); //иницализируем массив
  for(int i =0; i<120; i++){
    Circle newC = new Circle(); //создаем новый круг
    circles.add(newC);//добавляем его в массив
  }
  
}
void draw(){
  background(360,90,5);
  //fill(255,100,100);
  for (Circle c:circles){ //бежим по каждому элементу массива и вызываем функции круга
    c.move();
    c.grow();
    c.display();
  }
  //saveFrame("output/wallpaper-####.png"); //раскомментировать, если нужен рендер видео
}

ArrayList<Drop> drops;
void setup(){
  
  size(800,500);
  colorMode(HSB,360,100,100);
  drops = new ArrayList <Drop>();
  for (int i=0; i<300;i++){
    Drop newD = new Drop();
    drops.add(newD);
  }
}
void draw(){
  background(360,0,100);
  for (Drop d: drops){
    d.move();
    d.display();
  }
}

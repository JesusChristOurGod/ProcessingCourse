ArrayList<Planet> planets;
void setup(){
  size(600,600);
  colorMode(HSB,360,100,100);
  noStroke();
  planets = new ArrayList<Planet>();
  Planet Earth = new Planet(200,0.001,200,50);
  planets.add(Earth);
  Planet Venus = new Planet(100,0.01,340,30);
  planets.add(Venus);
  Planet Jupiter = new Planet(300,0.02,20,100);
  planets.add(Jupiter);
}
void draw(){
  background(0);
  translate(width/2,height/2);
  fill(50,100,100);
  circle(0,0,125); //солнышко
  for (Planet p: planets){
    p.move();
    p.display();
  }

}

PImage kitten;
ArrayList <Particle> particles;
boolean run = true;
void setup(){
  size(640,514);
  kitten = loadImage("kitten.jpeg");
  particles = new ArrayList <Particle>();
  for (int i = 0; i<200;i++){
    Particle newP = new Particle();
    particles.add(newP);
  }
  noStroke();
}
void draw(){
  for (Particle p: particles){
    p.move();
    p.display();
  }
  if (!run){
    noLoop();
  }
}
void keyPressed(){
  run = false;
}

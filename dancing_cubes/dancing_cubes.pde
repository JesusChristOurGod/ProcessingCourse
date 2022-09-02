ArrayList<Cube> cubes = new ArrayList<>();

void setup() {
   size (960, 720, P3D);
   frameRate(60);
   background(0,0,0);
   
   for(int i = 1; i < 80; i++) {
     int x = int(random(-450,450));
     int y = int(random(-300,300));
     int z = int(random(-20, -500));
     int acc = int(random(-5,5));
     if(acc == 0) acc = int(random(2,5));
     color shapeColor = color(random(255),random(255), random(255));
     float rotX = random(0, PI/90);
     float rotY = random(0, PI/90);
     cubes.add(new Cube(x,y,z, acc, shapeColor, rotX, rotY));  
   }
  
}

void draw() {
   translate(width/2,height/2);
   background(0,0,0);
   for(Cube c: cubes) c.display();
   
}
class Cube {
  int x;
  int y;
  int z;
  int acceleration; 
  float rotX;
  float rotY;
  float angleX = 0;
  float angleY = 0;
  color cubeColor;
  int step = 0;

  Cube(int x, int y, int z, int acceleration, color shapeColor, float rotX, float rotY) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.acceleration = acceleration;
    this.cubeColor = shapeColor;
    this.rotX = rotX;
    this.rotY = rotY;
    step = int(random(60));
  }
  
  void calculate() {
     angleX+=rotX;
     angleY+=rotY;
     if(step < 120) {
       y+=acceleration;
       step += 1;
     } else {
       step = 0;
       acceleration = -acceleration;
     }
  }
  
  void display() {
    calculate();
    pushMatrix();
    translate(x, y, z);
    rotateX(angleX);
    rotateY(angleY);
    noFill();
    stroke(cubeColor);
    strokeWeight(2);
    box(50,50,50);
    popMatrix();
    
  }
  

}

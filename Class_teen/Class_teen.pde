
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

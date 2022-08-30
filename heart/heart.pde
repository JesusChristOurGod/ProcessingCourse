//variables for movement
boolean shapeMovementDirection =true;
int shapeMovementCount;
int shapeMovementAmplitude = 60;
float shapeMovementVelocity; //add this to all x or y or z vertex coordinates, to get a movement effect
float shapeMovementAcceleration = 0.1;
//variables for shrinking
boolean shapeShrinkingDirection =true;
int shapeShrinkingCount;
int shapeShrinkingAmplitude = 200;
float shapeShrinkingVelocity; //add this to all x or y or z vertex coordinates, to get a shrinking(scaling) effect
float shapeShrinkingAcceleration = 0.1;

float shapeSize =100;
color  shapeColor = color(188, 70,165);
float xRotation;
float yRotation;
float zRotation;
float xRotationSpeed = 0;
float yRotationSpeed = 0.0008; 
float zRotationSpeed = 0.0002;

void setup(){
size(600,600,P3D);
}
void draw(){
translate(width/2, height/2);
background(0);
stroke(shapeColor);
noFill();
strokeWeight(4);
//calculating movement behaviour
if (shapeMovementDirection==true){
    shapeMovementVelocity+=shapeMovementAcceleration;
    shapeMovementCount++;
  }
  else{
    shapeMovementVelocity-=shapeMovementAcceleration;
    shapeMovementCount--;
  }
if (shapeMovementCount==shapeMovementAmplitude){
    
  shapeMovementDirection =false;
}
if (shapeMovementCount==-shapeMovementAmplitude){
    
  shapeMovementDirection =true;
}


//calculating shrinking behaviour
if (shapeShrinkingDirection==true){
    shapeShrinkingVelocity+=shapeShrinkingAcceleration;
    shapeShrinkingCount++;
  }
  else{
    shapeShrinkingVelocity-=shapeShrinkingAcceleration;
    shapeShrinkingCount--;
  }
if (shapeShrinkingCount==shapeShrinkingAmplitude){
    
  shapeShrinkingDirection =false;
}
if (shapeShrinkingCount==-shapeShrinkingAmplitude){
    
  shapeShrinkingDirection =true;
}

//changing angle of a shape
xRotation+=xRotationSpeed;
yRotation+=yRotationSpeed;
zRotation+=zRotationSpeed;

rotateX(xRotation);
rotateY(yRotation);
rotateZ(zRotation);


beginShape();

for (float a=0; a<TWO_PI;a+=0.01){
  float r = 10;
  float x = r *16*pow(sin(a),3);
  float y = -r *(13 *cos(a)- 5*cos(2*a)- 2*cos(3*a) - cos(4*a));
  vertex(x+shapeShrinkingVelocity,y+shapeShrinkingVelocity);
  
}
endShape();
}

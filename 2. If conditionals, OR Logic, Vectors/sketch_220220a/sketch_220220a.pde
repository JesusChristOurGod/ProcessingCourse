//float x, y, vx, vy, d;
float d;
PVector position, velocity;
void setup(){
size(600,600);
position = new PVector(random(100,500), random(100,500)); //that's how we initialise pvectors
d = 50;
velocity = new PVector(random(1,5), random(1,5));
}
void draw(){
background(255, 60,90);
position.add(velocity); //changing the position of the ball
if (position.x>=width-d/2 || position.x<0+d/2){
  velocity.x = velocity.x*(-0.9); //slowing down horizontal momvement and reversing its direction
}
if (position.y>=height-d/2 || position.y<d/2){
  velocity.y = velocity.y*(-0.9); //same as 14 but for vertical axis
}
circle(position.x, position.y, d);
if (frameCount%3==0){ //to make the ball slow down process slower, apply friction every 3rd frame
  velocity.mult(0.99999); //applying friction
}

}

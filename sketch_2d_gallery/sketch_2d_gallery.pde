float s = 50;
float osc;
void setup(){
  size(1400,700);
  fill(255);
  noStroke();
}
void draw(){
  background(0);
  
  osc+=0.02;
  s = map(sin(osc),0,1,0,100);
  pushMatrix();
  translate(width/4, height/2);
  rotate(radians(osc));
  beginShape();
    vertex(-s,-s);
    vertex(s,-s);
    vertex(s,s);
    vertex(-s,s);  
  endShape();
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(osc));
  beginShape();
    curveVertex(-s,-s);
    curveVertex(s,-s);
    curveVertex(s,s);
    curveVertex(-s,s);  
    curveVertex(0,0);
  endShape();
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(osc)+PI);
  beginShape();
    curveVertex(-s,-s);
    curveVertex(s,-s);
    curveVertex(s,s);
    curveVertex(-s,s);  
    curveVertex(0,0);
  endShape();
  popMatrix();
  
  
  pushMatrix();
  translate(width/4*3, height/2);
  rotate(radians(osc));
  beginShape();
    vertex(s/2,-s);
    vertex(0,s);
    vertex(s,s);
  endShape();
  popMatrix();
}

void setup() {
  size(200, 200, P3D);
  background(100);
}
//rotateZ(PI/8);

void draw() {
  
  
}
void mouseClicked() {
  translate(100, 100, 0);
  rectMode(CENTER);
  fill(51);
  stroke(255);
  float angle = random(-16, 16);
  float angle2 = random(0, 360);
  println(angle2);
  rotateZ(angle2);
  rotateX(PI/4);
  //rotateY(PI/angle);
  rect(0, 0, 100, 100);
}

// orig. code for heart by expdas https://forum.processing.org/one/topic/shape-heart.html
// refactored

void heart(int x, int y, int heartWidth, int heartBottom, int yVert) {
  smooth();
  noStroke();
  translate(mouseX - width/3, mouseY - height/3);
  scale(15.0);
  beginShape();
  vertex(x, yVert);
  bezierVertex(x, -y, x+heartWidth, y, x, heartBottom);
  vertex(x, yVert);
  bezierVertex(x, -y, x-heartWidth, y, x, heartBottom);
  endShape(CLOSE);
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}


//for (int i = 10; i < 100; i+=10) {
//  for (int j = 10; j < 100; j+=10) {
//    dotGrid(i*2, j*2, 10);
//  }
//}
void dotGrid(int x, int y, int circSize) {
  for (int i = x; i < 100; i+= x) {
    for (int j = y; j < 100; j+= y) {
      ellipse(i*2, j*2, circSize, circSize);
    }
  }
}

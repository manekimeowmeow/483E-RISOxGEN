// orig. code for heart by expdas https://forum.processing.org/one/topic/shape-heart.html
// refactored

int circSize = 200;

int y0 = 8; // vertex (x, y0);
int x1 = 0;
int y1 = -5;
int x2R = x1+25;
int x2L = x1-25;
int y2 = 5;
int x3 = x1;
int y3 = 22;

void drawHeart() {
  smooth();
  noStroke();
  translate(mouseX - width/3, mouseY - height/3);
  scale(15.0);
  beginShape();
  vertex(x1, y0);
  bezierVertex(x1, y1, x2R, y2, x3, y3);
  vertex(x1, y0);
  bezierVertex(x1, y1, x2L, y2, x3, y3);
  endShape();

  //stroke(0, 0, 255);

  // vertex
  //point(x1, y0);

  // top point
  //point(x1, y1);

  // left and right coords
  //point(x2R, y2);
  //point(x2L, y2);

  // bottom point
  //point(x3, y3);
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

void drawCircle() {
  ellipse(width/3, height/3 + 200, circSize, circSize); 
}

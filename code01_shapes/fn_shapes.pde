// orig. code for heart by expdas https://forum.processing.org/one/topic/shape-heart.html
// refactored

void heart(int x, int y, int heartWidth, int heartBottom, int yVert) {
  // Transformations
  fill(0, 0, 0, 3*random(20, 50));
  rotate(random(-.55, -.25));
  translate(mouseX - width/3, mouseY - height/3);
  scale(15.0);

  // Shape
  beginShape();
  vertex(x, yVert);
  bezierVertex(x, -y, x+heartWidth, y, x, heartBottom);
  vertex(x, yVert);
  bezierVertex(x, -y, x-heartWidth, y, x, heartBottom);
  endShape(CLOSE);
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  // Transformations
  fill(0, 0, 0, 3*random(10, 50));
  translate(random(20), random(20));

  // Shape
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

void dotGrid(int x, int y, int circSize) {
  // Transformations
  fill(0, 0, 0, 3*random(10, 50));
  translate(mouseX+random(100, 200), mouseY-random(100, 300));
  rotate(radians(25));

  // Shapes
  for (int i = x; i < 200; i+=x) {
    for (int j = y; j < 200; j+=y) {
      ellipse(i, j, circSize, circSize);
    }
  }
}

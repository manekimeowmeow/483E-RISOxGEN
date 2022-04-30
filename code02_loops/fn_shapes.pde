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

void circles(float x, float y, float circSize) {
  for (int times = 0; times < 200; times += 1) {
    x = x - 5;
    y = y - 10;
    strokeWeight(2);
    stroke(255);
    fill(0);
    ellipse(x, y, circSize, circSize);
    
    if (x < random(-100, 50)) { x = width; circSize = random(50, 200); }
    if (y < 0) {
      y = height;
      //circSize = random(5, 500);
    }
    
  }
}

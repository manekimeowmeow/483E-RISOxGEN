// orig. code for heart by expdas https://forum.processing.org/one/topic/shape-heart.html
// refactored

//int locnX = floor(random(50));
//int locnY = floor(random(100));

int y0 = 8; // vertex (x, y0);
int x1 = 40;
int y1 = -5;
int x2R = 65;
int x2L = 15;
int y2 = 5;
int x3 = x1;
int y3 = 22;

void drawHeart() {
  float rotVal = random(-1, 1);
  rotate(rotVal);
  println(rotVal);
  smooth();
  noStroke();
  translate(50, 120);
  scale(5.0);
  
  fill(0, 0, 0, random(40, 100));
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

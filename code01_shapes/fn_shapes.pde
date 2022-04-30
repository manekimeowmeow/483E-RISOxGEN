int locnX = floor(random(50));
int locnY = floor(random(100));

int vtx = 25;

void drawHeart() {
  locnX = floor(random(50));
  locnY = floor(random(100));
  smooth();
  noStroke();
  translate(-200, -20);
  scale(8.0);
  fill(255, 0, 0);
  beginShape();
  vertex(50, 15);
  bezierVertex(50+locnX, -5+locnY, 75+locnX, 5+locnY, 50+locnX, 45+locnY);
  vertex(50, 15);
  bezierVertex(50+locnX, -5+locnY, 25+locnX, 5+locnY, 50+locnX, 45+locnY);
  endShape();
  println(locnX);
}

// 170mm x 250mm => 55ppi => 368px x 542px
// with bleed: 175mm x 260mm; 180mm if spread
// https://pixelsconverter.com/millimeters-to-pixels



void setup() {
  size(757, 542);
}

void draw() {
  noStroke();
  fill(0, 0, 0, 25);
}

void mouseClicked() {

  int opacity = floor(random(10, 50));

  fill(0, 0, 0, opacity*3);

  pushMatrix();
  translate(60, 80);
  dotGrid(10, 10, 10);
  popMatrix();

  pushMatrix();
  translate(random(20), random(20));
  star(mouseX, mouseY, 30, 100, 8);
  popMatrix();

  opacity = floor(random(20, 50));
  fill(0, 0, 0, opacity*3);
  float rotVal = random(-.55, -.25);
  println(rotVal);
  rotate(rotVal);

  heart(0, 5, 25, 22, 8);
  rotate(-rotVal);
}

// others: mouseDragged, mousePressed, mouseReleased,

// shape warping: vertex()

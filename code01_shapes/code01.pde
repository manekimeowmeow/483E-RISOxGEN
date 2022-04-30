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
  for (int i = 10; i < 100; i+=10) {
    for (int j = 10; j < 100; j+=10) {
      dotGrid(i*2, j*2, 10);
    }
  }
popMatrix();

  star(mouseX + random(-10, 10), mouseY + random(-10, 10), 30, 100, 8);

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

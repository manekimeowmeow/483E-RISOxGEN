

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
  
  
  star(mouseX + random(-50, 200), mouseY + random(-50, 200), 30, 70, 8); 
  
  opacity = floor(random(20, 50));
  fill(0, 0, 0, opacity*3);
  float rotVal = random(-.55, -.25);
  println(rotVal);
  rotate(rotVal);
  drawHeart();
  rotate(-rotVal);
}

// others: mouseDragged, mousePressed, mouseReleased, 

// shape warping: vertex()



// 170mm x 250mm => 55ppi => 368px x 542px
// with bleed: 175mm x 260mm; 180mm if spread
// https://pixelsconverter.com/millimeters-to-pixels
int circSize = 200;



void setup() {
  size(368, 542);
  
}

void draw() {
  noStroke();
  fill(0, 0, 0, 25);
  ellipse(width/3, height/3 + 200, circSize, circSize); 
}

void mouseClicked() {
  drawHeart();
}

// others: mouseDragged, mousePressed, mouseReleased, 

// shape warping: vertex()

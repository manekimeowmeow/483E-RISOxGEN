boolean pdfToggle = false;

void setup() {
  size(768, 576); //(757, 542)
  background(220);
}

void draw() {
  noStroke();
}

void mouseClicked() {
  //translate(0, 25);
  drawGrid(96, floor(width/96), floor(width/96), 8, 96);
}

void keyTyped() {
  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }
  
  if (key == 'x') {
    background(220);
  }
}

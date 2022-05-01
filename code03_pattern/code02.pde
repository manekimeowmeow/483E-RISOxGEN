boolean pdfToggle = false;

void setup() {
  size(757, 542);
  background(0);
}

void draw() {
  noStroke();
}

void mouseClicked() {
  drawGrid(128, floor(width/128), floor(width/128), 8, 72, 36);
}

void keyTyped() {
  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }
}

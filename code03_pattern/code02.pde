boolean pdfToggle = false;

void setup() {
  size(768, 512); //(757, 542)
  background(220);
}

void draw() {
  noStroke();
}

void mouseClicked() {
  drawGrid(128, floor(width/72), floor(width/72), 8, 72);
}

void keyTyped() {
  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }
}

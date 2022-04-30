boolean pdfToggle = false;

void setup() {
  size(757, 542);
  background(#FFFFFF);
}

void draw() {
  noStroke();
}

void mouseClicked() {
  circles(width, height, 100);
}

void keyTyped() {
  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }
}

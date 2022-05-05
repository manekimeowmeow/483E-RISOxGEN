import geomerative.*;

boolean pdfToggle = false;

void setup() {
  size(757, 542);
  background(#FFFFFF);
}

void draw() {
}

void mouseClicked() {
}

void keyTyped() {
  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }
}

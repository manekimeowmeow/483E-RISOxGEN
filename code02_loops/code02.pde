boolean pdfToggle = false;

void setup() {
  size(757, 542);
  background(#FFFFFF);
}

void draw() {
  noStroke();
}

void mouseClicked() {
  background(255);
  circles(width, height, 100);
  lines(0, 250, 2, 100, 4, .5);
  circles(width, height, 100);
}

void keyTyped() {
  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }
}

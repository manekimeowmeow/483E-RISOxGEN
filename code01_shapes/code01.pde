boolean pdfToggle = false;

void setup() {
  size(757, 542);
  background(#FFFFFF);
}

void draw() {
  noStroke();
}

void mouseClicked() {
  // ---- Dot Pattern
  pushMatrix();
  dotGrid(10, 10, 5);
  popMatrix();

  // ---- Star
  pushMatrix();
  star(mouseX, mouseY, 30, 120, 8);
  popMatrix();

  // ---- Heart
  pushMatrix();
  heart(0, 5, 25, 22, 8);
  popMatrix();
}

void keyTyped() {
  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }
}

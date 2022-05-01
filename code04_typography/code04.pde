boolean pdfToggle = false;

void setup() {
  size(757, 542); //(757, 542)
}

void draw() {
  noStroke();
}

void mouseClicked() {
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

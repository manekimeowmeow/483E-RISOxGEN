boolean pdfToggle = false;
float x1;
float y1;

void setup() {
  size(757, 542); //(757, 542)
}

void draw() {
}

void mouseDragged() {
  stroke(0);
  line(x1, y1, mouseX, mouseY);
  x1 = mouseX;
  y1 = mouseY; // disabled is p interesting but unintended ??
  println("x1, y1, mouseX, mouseY: ",x1,y1,mouseX,mouseY);
}

void mouseClicked() {
  noStroke();
}

void keyTyped() {

  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }
}

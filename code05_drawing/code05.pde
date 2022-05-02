boolean pdfToggle = false;
float x1;
float y1;
int lastClick = 0;
int strokeSize = 1;

void setup() {
  size(757, 542); //(757, 542)
}

void draw() {
  if (millis() - lastClick > 400) {
    x1 = mouseX;
    y1 = mouseY;
  }
}

void mouseDragged() {
  stroke(0);
  line(x1, y1, mouseX, mouseY);
  x1 = mouseX;
  y1 = mouseY; // disabled is p interesting but unintended ??
  println("x1, y1, mouseX, mouseY: ", x1, y1, mouseX, mouseY);
}

void mouseClicked() {
  noStroke();
}

void keyTyped() {

  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }

  if (key == 'q' && strokeSize > 1) {
    strokeSize--;
    strokeWeight(strokeSize);
    println("Stroke size: ", strokeSize);
  } else if (key == 'e' && strokeSize < 5) {
    strokeSize++;
    strokeWeight(strokeSize);
    println("Stroke size: ", strokeSize);
  }
}

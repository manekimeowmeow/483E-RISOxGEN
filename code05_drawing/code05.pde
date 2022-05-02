boolean pdfToggle = false;
float x1;
float y1;
int strokeSize = 1;

void setup() {
  size(757, 542); //(757, 542)
}

void draw() {
}

void mouseDragged() {
  stroke(0);
  line(pmouseX, pmouseY, mouseX, mouseY);
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

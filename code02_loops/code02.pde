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
  //circles(width, height, 200);
  //lines(0, 250, 2, 100, 4, .5);
  println("aa");
  background(255);
  //circles(width, height, random(50, 250));
  circAndLines(width, height, random(50, 150), 0, 250, 2, 100, 4, .5);
}

void keyTyped() {
  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }
}

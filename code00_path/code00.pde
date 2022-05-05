// following hbyhadeel's tutorial!

import geomerative.*;

boolean pdfToggle = false;

long seed;

void setup() {
  size(757, 542);
  background(#FFFFFF);

  pixelDensity(2);
  seed = (long)random(10000);
  println(seed);
  randomSeed(seed);
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

import processing.pdf.*;

color colDkBlue = #366CA8;
PFont f;
String words = "";
float x = 30;
float y = 100;

boolean pdfToggle = false;

void setup() {
  size(757, 542, P3D); //(757, 542)
  setFont();
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
  // ---- Add chars to string
  //words = words + key;
  // ---- Draw keystrokes
  setFont();
  drawKey();

  if (key == 'x') {
    background(220);
  }


  // probably adding circles later but worry about it after!!!!
  //lights();
  //rect(0, 0, 100, 100);
  //fill(255, 255, 255, 50);
  //sphere(50);
}

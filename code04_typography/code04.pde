color colBg = #E3DDD3;
color colDkBlue = #366CA8;
color colOrange = #EB6F48;
PFont f;
String words = "";
float x = 30;
float y = 100;

boolean pdfToggle = false;

void setup() {
  size(757, 542, P3D); //(757, 542)
}

void draw() {
  noStroke();
}

void mouseClicked() {
}

void keyTyped() {
  // ---- Add chars to string
  words = words + key;
  // ---- Draw keystrokes
  setFont();
  drawKey();
  
  if (key == '1') {
    // ---- Toggle PDF recording
    keyTogglePDF();
  }

  if (key == 'x') {
    background(220);
  }
}

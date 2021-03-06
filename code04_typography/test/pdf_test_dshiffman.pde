// http://learningprocessing.com/examples/chp21/example-21-04-3D-PDF

// Example 21-4: PDF and openGL

// PDF Library
import processing.pdf.*;
PFont f;

// Cube rotation
float yTheta = 0.0;
float xTheta = 0.0;
float x = 30;
float y = 100;


// A boolean variable that when set to true triggers the PDF recording process
boolean recordPDF = false;

void setup() {
  // OPENGL or P3D mode requires the use of beginRaw() and endRaw() instead of beginRecord() and endRecord().
  size(400, 400, P3D);
}

void setFont() {
  f = createFont("fonts/Basteleur-Bold.ttf", 400, true);
  textFont(f);
  textLeading(130);
}

void draw() {
  // Begin making the PDF
  if (recordPDF) {
    beginRaw(PDF, "3D.pdf" ); // If you include "####" in the filename -- "3D-####.pdf" -- separate, numbered PDFs will be made for each frame that is rendered.
  }

  color colDkBlue = #366CA8;
  fill(colDkBlue, 250);
  text(key, x, y);
  background(255);
  stroke(0);
  noFill();
  translate(width/2, height/2);
  rotateX(xTheta);
  rotateY(yTheta);
  box(100);
  xTheta += 0.02;
  yTheta += 0.03;

  // End making the PDF
  if (recordPDF) {
    endRaw();
    recordPDF = false;
  }
}

// Make the PDF when the mouse is pressed
void mousePressed() {
  recordPDF = true;
}

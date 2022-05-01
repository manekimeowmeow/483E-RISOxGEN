void circAndLines(float x, float y, float circSize, float x1, float y1, float w, float h, float xMultiplier, float yMultiplier) { // oh god ????
  for (int times = 0; times < 190; times += 1) {

    // Circles
    x = x - 5;
    y = y - 10;
    strokeWeight(2);
    stroke(255);
    fill(0);
    ellipse(x, y, circSize, circSize);

    if (x < random(-200, 100)) {
      x = width;
      circSize = random(50, 250);
    }
    if (y < 0) {
      y = height;
      //fill(0, 0, 255);
    }

    // Lines
    x1 = x1 + xMultiplier;
    y1 = y1 - yMultiplier;

    fill(255, 0, 0);
    noStroke();
    rect(x1, y1, w, random(h));

    if (x1 > width) {
      x1 = 0;
      y1 = random(height);
    }
  }
}

//void circles(float x, float y, float circSize) {
//  for (int times = 0; times < 200; times += 1) {
//  x = x - 5;
//  y = y - 10;
//  strokeWeight(2);
//  stroke(255);
//  fill(0);
//  ellipse(x, y, circSize, circSize);

//  if (x < random(-200, 100)) {
//    x = width;
//    circSize = random(50, 250);
//  }
//  if (y < 0) {
//    y = height;
//    //fill(0, 0, 255);
//  }
//}
//}

//void lines(float x, float y, float w, float h, float xMultiplier, float yMultiplier) {
//  for (int times = 0; times < 200; times += 1) {
//  x = x + xMultiplier;
//  y = y - yMultiplier;

//  fill(255, 0, 0);
//  noStroke();
//  rect(x, y, w, random(h));

//  if (x > width) {

//    x = 0;
//    y = random(height);
//  }
//}
//}

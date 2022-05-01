void circles(float x, float y, float circSize) {
  for (int times = 0; times < 10; times += 1) {
    x = x - 5;
    y = y - 10;
    strokeWeight(2);
    stroke(255);
    //fill(0);
    ellipse(x, y, circSize, circSize);

    if (x < random(-200, 100)) {
      x = width;
      circSize = random(50, 250);
    }
    if (y < 0) {
      y = height;
      fill(0, 0, 255);
    }
  }
}

//void lines(float x, float y, float w, float h, float xMultiplier, float yMultiplier) {
//  for (int times = 0; times < 200; times += 1) {
//    x = x + xMultiplier;
//    y = y - yMultiplier;

//    fill(255, 0, 0);
//    noStroke();
//    rect(x, y, w, random(h));

//    if (x > width) {

//      x = 0;
//      y = random(height);
//    }
//  }
//}

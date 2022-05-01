void circles(float x, float y, float circSize) {
  for (int times = 0; times < 200; times += 1) {
    x = x - 5;
    y = y - 10;
    strokeWeight(2);
    stroke(255);
    //fill(0);
    ellipse(x, y, circSize, circSize);

    if (x < random(-100, 50)) {
      x = width;
      circSize = random(50, 250);
    }
    if (y < 0) {
      y = height;
      fill(0, 0, 255);
    }
  }
}

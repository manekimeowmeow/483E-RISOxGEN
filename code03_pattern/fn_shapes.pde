// basing off assignment 06 code

void drawGrid(float cellSize, int cols, int rows, int minSize, int maxSize) {
  cols = int(width/cellSize);
  rows = int(height/cellSize);

  int drawingType = floor(random(2));

  println("GRIDS / cols: ", cols);
  println("GRIDS / rows: ", rows);

  // Loop over rows
  for (int i = 0; i < cols; i++) {
    float x = i * cellSize + cellSize/2;

    for (int j = 0; j < rows; j++) {
      float y = j * cellSize + cellSize/2;
      noStroke();

      // Coinflip
      if (drawingType == 0) {
        // If 0, draw white circ + semi-transp blue dot
        fill(255);
        ellipse(x, y + random(0), random(minSize, maxSize), random(minSize, maxSize));
        fill(0, 0, 255, random(0, 100));
        ellipse(x, y + random(0), 25, 25);
      } else if (drawingType == 1) {
        // If 1, draw semi-transp blue circ
        rotate(0);
        fill(0, 0, 255, random(255));
        ellipse(x, y + random(3), random(minSize, maxSize), random(minSize, maxSize));
      }
    }
  }
}

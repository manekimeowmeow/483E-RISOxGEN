// generative typography
/* 
*/

// others: mouseDragged, mousePressed, mouseReleased,

// shape warping: vertex()

// 170mm x 250mm => 55ppi => 368px x 542px
// with bleed: 175mm x 260mm; 180mm if spread
// https://pixelsconverter.com/millimeters-to-pixels
//  size(757, 542);

// was going to use draw() + point() to create drawing prog, but stumbled upon https://openprocessing.org/sketch/26614/
// by basil which used line() to draw cleaner lines on mouse click by
// saving values of mouseX, mouseY to variables

// but it would always register the last point and continue to draw a line from there

// solved w/ help of calsign https://forum.processing.org/one/topic/drawing-program#25080000000716223.html
// realized it's bc x1 and y1 last update when the mouse is dragged (so it
// doesn't update coords when the mouse is moved, unlesss it's dragged again)
// added in timer so if there's been a pause over 400ms, it registers value of new posn

// discovered mouseMove; replaced timer check w/ it https://processing.org/reference/mouseMoved_.html

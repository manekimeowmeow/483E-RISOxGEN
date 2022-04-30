import processing.pdf.*;

void startPDF() {
  println("Capturing PDF...");
  String fileName = year()+"-"+month()+"-"+day()+"_"+random(1000);
  beginRecord(PDF, "EXPORT/"+fileName+".pdf");
  background(#FFFFFF);
}

void stopPDF() {
  endRecord();
  println("Ended PDF capture.");
}

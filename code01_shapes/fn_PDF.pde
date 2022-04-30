import processing.pdf.*;

void keyTogglePDF() {
  if (!pdfToggle) {
    startPDF();
    pdfToggle = !pdfToggle;
  } else {
    stopPDF();
    pdfToggle = !pdfToggle;
  }
}

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

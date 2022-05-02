

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
  beginRaw(PDF, "EXPORT/"+fileName+".pdf");
}

void stopPDF() {
  endRaw();
  println("Ended PDF capture.");
  save("sendhelp.png");
}

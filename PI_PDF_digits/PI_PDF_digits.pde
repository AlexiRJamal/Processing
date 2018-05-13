import processing.pdf.*;

String pi;

PGraphicsPDF pdf;

void renderBook() {
  //int cols = 100;
  //int rows = 100;

  textSize(12);

  float w = 12; //float(width/cols);
  float h = 14.4; //float(height/rows);

  int index = 0;

  //int totalPages = pi.length() / (cols*rows);
  //println(totalPages);

  background(255); 
  
  PFont f = createFont("Courier New", 12);
  textFont(f);

  //for (int i=0; i<totalPages; i++) {
    int margin = 75;
  int pageNum = 0;
  while (true) {
    for (float y = margin; y < height-margin; y+= h) {
      //for (float x = 0; x < width; x+= w) {
      float x = margin;
      while (x < width-margin-w/2) {
        String s = "" + pi.charAt(index);
        //int digit = int(s);g
        fill(0);
        textAlign(CENTER, CENTER);
        text(s, x+w/2, y+h/2);
        x += textWidth(s);
        index++;
        if (index >= pi.length()) {
          return;
        }
      }
    }
    pageNum++;
    println("Page "+pageNum+" completed");
    pdf.nextPage();
  }
}

void setup() {
  size(1000, 1000, PDF, "bookofpi.pdf");
  pdf = (PGraphicsPDF) g;
  pi = loadStrings("pi-1-million.txt")[0];
  renderBook();

  println("Finished");
  exit();
  //endRecord();
}

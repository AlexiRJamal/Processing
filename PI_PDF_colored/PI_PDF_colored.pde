import processing.pdf.*;

String pi;



void setup() {
  size(1000, 1000, PDF, "bookofpi.pdf");
  PGraphicsPDF pdf = (PGraphicsPDF) g;
  pi = loadStrings("pi-1-million.txt")[0];

  int cols = 100;
  int rows = 100;
  
  colorMode(HSB, 1.0);
  
  float w = float(width/cols);
  float h = float(height/rows);
  
  int index = 0;
  
  int totalPages = pi.length() / (cols*rows);
  println(totalPages);
  for(int i=0; i<totalPages; i++){
    
  
  
  for (float y = 0; y < height; y+= h) {
    for (float x = 0; x < width; x+= w) {
      String s = "" + pi.charAt(index);
      int digit = int(s);
      float hue = digit/10.0;
      fill(hue, 1, 1);
      noStroke();
      rect(x, y, w, h);
      //textAlign(CENTER, CENTER);
      //text(digit, x+w/2, y+h/2);
      index++;
      if (index >= pi.length()) {
        index = pi.length()-1;
      }
    }
  }
  println("Page "+i+" completed");
  pdf.nextPage();
  }
  println("Finished");
  exit();
  //endRecord();

}

//Alexi Jamal

String pi;

PGraphics canvas;

void setup() {
  size(800, 800);
  canvas = createGraphics(8000, 8000);

  float cols = 1000;
  float rows = 1000;

  pi = loadStrings("pi-1-million.txt")[0];

  //beginRecord(PDF, "bookOfPI.pdf");
  canvas.beginDraw();
  float w = canvas.width/cols;
  float h = canvas.height/rows;
  int index = 0;
  for (float y=0; y < canvas.height; y+= h) {
    for (float x=0; x < canvas.width; x+= w) {
      String s = "" + pi.charAt(index);
      //int digit = int(s);
      //float hue = digit/9.0;
      //canvas.fill(hue, 1, 1);
      //canvas.noStroke();
      //canvas.rect(x, y, w, h);
      //fill(255-bright);
      canvas.textAlign(CENTER, CENTER);
      canvas.text(s, x+w/2, y+h/2);
      index++;
      if (index >= pi.length()) {
        index = pi.length()-1;
      }
    }
  }
  println("Processing...");
  canvas.endDraw();
  image(canvas, 0, 0, width, height);
  println(index);
  canvas.save("posterofpi.png");
  println("Finished");
  //endRecord();
}

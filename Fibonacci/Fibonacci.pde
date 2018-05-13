  import processing.pdf.*;

void setup(){
  beginRecord(PDF, "fib.pdf");
  int a=0;
  int b=1;
  int result;
  result = b;
  int counter = 1;
  for (int i=1; i<=100; i++) {
    println(counter+". "+result);
    result = a+b;
    a=b;
    b=result;
    counter++;
  }
  endRecord();
}

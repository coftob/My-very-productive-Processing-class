import processing.pdf.*;

void setup() {

  size(500, 500);
  background(224, 225, 225);
  noFill();
}

void draw() {
  beginRecord(PDF, "kleeblatt.pdf");
  float t = (float)frameCount;
  
  translate(width/2, height/2);
  
  stroke(0, 40);
  if(frameCount < 700) {
    line(sin(t/5)*200, cos(t/5)*200, sin(t)*200, cos(t)*200);
  }
}

void keyPressed () {
  if (key == 'q') {
    println("done");
    endRecord();
    exit();
  }
}

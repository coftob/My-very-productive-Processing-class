import processing.pdf.*;

void setup() {
  size(500, 500);
  background(224, 225, 225);
  noFill();
}

void draw() {
  beginRecord(PDF, "muster1.svg");

  float t = (float)frameCount;
  
  //translate(width/2, height/2);
  stroke(0, 40);
  strokeWeight(1);

  rectMode(CENTER);
  if(frameCount < 200) {
    for(int i = 0; i < 700; i = i+100) {
      for (int j = 0; j < 600; j = j+100){
        rect(sin(t)*50+i, cos(t)*50+j, 50, 50);
      }
    }
  }
}

void keyPressed() {
  if(key == 'q') {
    endRecord();
    println("done");
    exit();
  }
}

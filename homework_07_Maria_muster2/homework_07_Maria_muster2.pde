import processing.svg.*;

void setup() {
  size(500, 500);
  background(224, 225, 225);
  noFill();
}

void draw() {
  beginRecord(SVG, "muster2.svg");
  float t = (float)frameCount;
  
  //translate(width/2, height/2);
  
  stroke(0, 40);
  strokeWeight(1);

  rectMode(CENTER);
  if(frameCount < 100) {
    for(int i = 0; i < 700; i = i+150) {
      for (int j = 0; j < 600; j = j+150){
        ellipse(sin(t)*100+i, cos(t)*100+j, 100, 100);
      }
    }
    for(int k = 0; k < 700; k = k+150) {
      for (int l = 0; l < 600; l = l+150){
        ellipse(cos(t)*100+k, sin(t)*100+l, 100, 100);
      }
    }
  }
  endRecord();
}

void keyPressed() {
  if(key == 'q') {
    endRecord();
    println("done");
    exit();    
  }
}

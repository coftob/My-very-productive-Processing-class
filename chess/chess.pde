//Creepy Chess, Exercise 2, Homework day 2
//Maria Dinitz
//Chess pieces, that are getting bigger (and creepier) with the frame rate. 
//You can make them increase/decrease their size faster or slower  and reverse the direction by pressing the buttons and set them back to their default size and changing 
//the color by pressing another buttons.
//In case you're getting too uncomfortable or annoyed, you can check out by pressing the "MAKE IT STOP" button.
//NOTE: if the're getting to big somehow, set to default size and try again (this is a crazy machine for sure because it drives you crazy by just looking at it)


PImage chessboard;
PImage negativeboard;

float pawnX = width/2;
float pawnY = height/2;
float pawnZ = -100;
float pawnSize = 0.5;
int pawnColor = #F0E6D7;
float speed = 0.0001;
float frame = 10;
int faceColor;

void setup() {
  size(1000, 600, P3D);
  frameRate(frame);
  chessboard = loadImage("board.jpg");
  negativeboard = loadImage("negativeboard.jpg");
}


void draw() {
  if (pawnSize < 0) {
    background(negativeboard);
  } else {
    background(chessboard);
  }
  //interface
  fill(39, 146, 207, 50);
  rect(0, 470, 1000, 200);
  stroke(255); //buttons
  strokeWeight(5);
  fill(89, 121, 152, 70); 
  rect(80, 500, 100, 50, 15);
  rect(280, 500, 100, 50, 15);
  rect(480, 500, 100, 50, 15);
  rect(680, 500, 100, 50, 15);
  fill(#AA1813);
  ellipse(900, 500, 120, 120);
  fill(225);
  text("WTF IS THIS?", 862, 495);
  text("MAKE IT STOP!", 857, 515);

  pushMatrix(); //star button 1
  noStroke();
  fill(#F0E6D7);
  translate(110, 525);
  rotate(frameCount / 200.0);
  star(0, 0, 5, 20, 5); 
  popMatrix();

  pushMatrix(); //star button 1
  noStroke();
  fill(#25292C);
  translate(150, 525);
  rotate(frameCount / 200.0);
  star(0, 0, 5, 20, 5); 
  popMatrix();

  pushMatrix(); //star button 2
  noStroke();
  fill(0);
  translate(330, 525);
  rotate(frameCount / 100.0);
  star(0, 0, 18, 22, 8); 
  popMatrix();

  pushMatrix(); //star button 2
  noStroke();
  fill(225);
  translate(330, 525);
  rotate(frameCount / 100.0);
  star(0, 0, 5, 10, 8); 
  popMatrix();

  pushMatrix(); //star button 3
  noStroke();
  fill(0);
  translate(505, 525);
  rotate(frameCount / -3.0);
  star(0, 0, 7, 12, 12); 
  popMatrix();

  pushMatrix(); //star button 3
  noStroke();
  fill(165);
  translate(530, 525);
  rotate(frameCount / 2.0);
  star(0, 0, 5, 10, 9); 
  popMatrix();

  pushMatrix(); //star button 3
  noStroke();
  fill(225);
  translate(555, 525);
  rotate(frameCount / -1.0);
  star(0, 0, 3, 8, 6); 
  popMatrix();

  pushMatrix(); //star button 4
  noStroke();
  fill(225);
  translate(700, 525);
  rotate(frameCount / 600.0);
  star(0, 0, 10, 15, 5); 
  popMatrix();
  pushMatrix(); //star button 4
  noStroke();
  fill(180);
  translate(715, 525);
  rotate(frameCount / 800.0);
  star(0, 0, 12, 17, 6); 
  popMatrix();
  pushMatrix(); //star button 4
  noStroke();
  fill(100);
  translate(735, 525);
  rotate(frameCount / 1000.0);
  star(0, 0, 14, 19, 7); 
  popMatrix();
  pushMatrix(); //star button 4
  noStroke();
  fill(0);
  translate(755, 525);
  rotate(frameCount / 1200.0);
  star(0, 0, 16, 21, 8); 
  popMatrix();

  lights();
  for (float i = -1000; i < 2000; i = i+400) {
    for (float j = -500; j < 2000; j = j+400) {
      for (float k = -1000; k < 0; k = k+400) {
        pawn(i, j, k, pawnSize);
        if (frameCount == frameCount++) {
          if ((pawnSize < 2) && (pawnSize > -2)) {
            pawnSize = pawnSize+speed;
          }
        }
      }
    }
  }
}
void mouseClicked() {
  //color change
  if (pawnColor == #F0E6D7) {
    if ((mouseX > 80) && (mouseX < 180)) {
      if ((mouseY > 500) && (mouseY < 550)) {
        pawnColor = #25292C;
        faceColor = 225;
      }
    }
  } else if ((mouseX > 80) && (mouseX < 180)) {
    if ((mouseY > 500) && (mouseY < 550)) {
      pawnColor = #F0E6D7;
      faceColor = 0;
    }
  }

  //increse speed
  if ((mouseX > 680) && (mouseX < 780)) {
    if ((mouseY > 500) && (mouseY < 550)) {
      //speed = speed+0.001;
      frame = frame*frame;
    }
  }

  //reverse direction
  if ((mouseX > 480) && (mouseX < 580)) {
    if ((mouseY > 500) && (mouseY < 550)) {
      speed = -speed;
    }
  }


  //restart
  if ((mouseX > 280) && (mouseX < 380)) {
    if ((mouseY > 500) && (mouseY < 550)) {
      pawnSize = 0.1;
    }
  }

  //I'VE HAD ENOUGH OF THIS SHIT!
  if ((mouseX > 850) && (mouseX < 950)) {
    if ((mouseY > 450) && (mouseY < 550)) {
      noLoop();
    }
  }
}
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

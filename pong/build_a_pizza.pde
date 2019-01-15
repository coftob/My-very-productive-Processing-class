//functions of the pizza maker and the ingredients

void pizzaMaker() {
  noStroke();
  if (round == 1) {
    pizzaDough(width/2, height/2);
  }
  else if (round == 2) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
  }
  else if (round == 3) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
  }
  else if (round == 4) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
  }
  else if (round == 5) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
  }
  else if (round == 6) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
  }
  else if (round == 7) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
    peperoni(450, 380);
  }
  else if (round == 8) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
    peperoni(450, 380);
    peperoni(430, 220);
  }
  else if (round == 9) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
    peperoni(450, 380);
    peperoni(430, 220);
    champion(450, 310);
  }
  else if (round == 10) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
    peperoni(450, 380);
    peperoni(430, 220);
    champion(450, 310);
    basil(390, 340);
  }
  else if (round == 11) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
    peperoni(450, 380);
    peperoni(430, 220);
    champion(450, 310);
    basil(390, 340);
    peperoni(310, 265);
  }
  else if (round == 12) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
    peperoni(450, 380);
    peperoni(430, 220);
    champion(450, 310);
    basil(390, 340);
    peperoni(310, 265);
    champion(370, 240);
  }
  else if (round == 13) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
    peperoni(450, 380);
    peperoni(430, 220);
    champion(450, 310);
    basil(390, 340);
    peperoni(310, 265);
    champion(370, 240);
    peperoni(500, 315);
  }
  else if (round == 14) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
    peperoni(450, 380);
    peperoni(430, 220);
    champion(450, 310);
    basil(390, 340);
    peperoni(310, 265);
    champion(370, 240);
    peperoni(500, 315);
    basil(330, 220);
  }
  else if (round == 15) {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
    peperoni(450, 380);
    peperoni(430, 220);
    champion(450, 310);
    basil(390, 340);
    peperoni(310, 265);
    champion(370, 240);
    peperoni(500, 315);
    basil(330, 220);
    peperoni(360, 380);
 }
 else if (round == 0) {}
 else {
    pizzaDough(width/2, height/2);
    sauce(width/2, height/2);
    cheese(width/2, height/2);
    peperoni(width/2, height/2);
    champion(320, 320);
    basil(480, 230);
    peperoni(450, 380);
    peperoni(430, 220);
    champion(450, 310);
    basil(390, 340);
    peperoni(310, 265);
    champion(370, 240);
    peperoni(500, 315);
    basil(330, 220);
    peperoni(360, 380);
 }
 
 }
 void peperoni(float xPos, float yPos) {
  pushMatrix();
  translate(xPos, yPos);
  fill(#C11B1B);
  ellipse(0, 0, 40, 40);
  fill(#E87575);
  ellipse(0, 0, 33, 33);
  fill(#F2A295);
  ellipse(8, -8, 6, 6);
  ellipse(2, 0, 6, 6);
  ellipse(-5, -6, 6, 6);
  ellipse(6, 7, 6, 6);
  ellipse(-5, -6, 6, 6);
  ellipse(-8, 8, 6, 6);
  ellipse(-10, 2, 3, 3);
  ellipse(10, 1, 3, 3);
  popMatrix();
}

void champion(float xPos, float yPos) {
  pushMatrix();
  translate(xPos, yPos);
  fill(#AA8365);
  ellipse(2, 0, 20, 35);
  ellipse(2, -15, 40, 15);
  fill(#F5E5BC);
  ellipse(0, 0, 20, 35);
  ellipse(0, -15, 40, 15);
  popMatrix();
}

void basil(float xPos, float yPos) {
  pushMatrix();
  translate(xPos, yPos);
  fill(#0BB425);
  beginShape();
  vertex(0, -10);
  bezierVertex(15, 10, 20, 15, 0, 25);
  bezierVertex(-20, 15, -15, 10, 0, -10);
  endShape();
  line(0, -9, 0, 24);
  popMatrix();
}
void pizzaDough(float xPos, float yPos) {
  float x2 = xPos+10;
  float y2 = yPos+10;
  noStroke();
  fill(10, 10, 10, 70);
  ellipse(x2, y2, 300, 300);
  fill(#BF713E);
  ellipse(xPos, yPos, 300, 300);
}

void sauce(float xPos, float yPos) {
  fill(#CB140A);
  ellipse(xPos, yPos, 270, 270);
}

void cheese(float xPos, float yPos) {
  fill(#EDD57C);
  ellipse(xPos, yPos, 260, 260);
}

void burn() {
    fill(0);
    ellipse(410, 310, 300, 300);
    fill(100);
    ellipse(width/2, height/2, 300, 300);
    fill(40);
    ellipse(width/2, height/2, 270, 270);
    fill(130);
    ellipse(width/2, height/2, 260, 260);
    fill(70);
    ellipse(450, 250, 40, 40);
    ellipse(350, 250, 40, 40);
    ellipse(320, 350, 40, 40);
    ellipse(400, 350, 40, 40);
    ellipse(480, 350, 40, 40);
    
}

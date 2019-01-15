class StressMonster {
  float xPos;
  float yPos;
  float r;
  float g;
  float b;
  float colOpacity;
  
  StressMonster() {
    r = random(10, 255); 
    g = random(10, 255); 
    b = random(10, 255); 
    
    colOpacity = opacity;
    xPos = random(260, 640);
    yPos = random(350, 650);
  }
  
  void move() {
    yPos = yPos-monsterSpeed;
    xPos = xPos+random(-10, 10);
    if(yPos < 0) {
      yPos = random(50, 650);
      xPos = random(350, 550);
    }
  }

  void display() {
    pushMatrix();
    translate(xPos, yPos);
    scale(monsterScale);
    noStroke();
    fill(r, g, b, opacity);
    ellipse(0, 0, 70, 70);
    fill(225, opacity);
    ellipse(-17, -5, 15, 15);
    ellipse(17, -5, 15, 15);
    fill(0, opacity);
    ellipse(-17, -5, 10, 10);
    ellipse(17, -5, 10, 10);
    fill(0);
    textAlign(CENTER);
    textSize(10);
    text("STRESS", 0, 20);
    popMatrix();
  }
}

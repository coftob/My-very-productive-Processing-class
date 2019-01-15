class Menu {
  Boolean hover;
  int opacityButton;
  Menu() {
    hover = false;
  }
  
  void display() {
    noStroke();
    fill(225, 99);
    rectMode(CENTER);
    rect(width/2, height/2, 900, 900);
    fill(0, 99);
    rect(width/2, 350, 900, 200);
    textAlign(CENTER);
    fill(225);
    textSize(14);
    textFont(robotoBig);
    text("This is Pete. Pete suffers from Insomnia.", width/2, 300);
    text("Control his stress level with the sliders and see stress monsters coming out of his head.", width/2, 320);
    text("You decide, what he should worry about!", width/2, 340);
    fill(9, 31, 95, opacityButton);
    rect(width/2, 400, 200, 50);
    fill(225);
    textSize(10);
    text("LET'S STAY UP WITH PETE!", width/2, 405);
    
  }
  
  void startButton() {
    if(mouseX > 350 && mouseX < 550) {
      if(mouseY > 375 && mouseY < 425) {
        opacityButton = 100;
        hover = true;
      }
      else {
        opacityButton = 50;
        hover = false;
      }
    }
    else {
      opacityButton = 50;
      hover = false;
    }
    if(mousePressed) {
      if(menuOpen == true && hover == true) {
        menuOpen = false;
      }
      else {
        menuOpen = true;
      }
    }
  }
}

class MultiPlayer {
  float player_x;
  float player_y;
  float player_2_x;
  float player_2_y;
  float ball_x;
  float ball_y;
  float ball_speed_x;
  float ball_speed_y;
  
  int round;
  int highscore;
  int lifes;
  int round_2;
  int highscore_2;
  int lifes_2;

  MultiPlayer() {
    player_x = 20;
    player_y = 60;
    player_2_x = 780;
    player_2_y = 60;
    
    ball_x = 770;
    ball_y = 300;
    ball_speed_x = -4;
    ball_speed_y = 0;
    
    round = 0;
    highscore = 0;
    lifes = 3;
    round_2 = 0;
    highscore_2 = 0;
    lifes_2 = 4;
    }
    void keyControls() {
      if (keyPressed) {  //player 1
        if (key == 's') {
          if (player_y < 550) {
            player_y = player_y+5;
          }
        }
        if (key == 'w') {
          if (player_y > 50) {
            player_y = player_y-5;
          }
        }
        if (keyCode == DOWN) { //player 2
          if (player_2_y < 550) {
            player_2_y = player_2_y+5;
          }
        }
        if (keyCode == UP) {
          if (player_2_y > 50) {
            player_2_y = player_2_y-5;
          }
        } 
      }
    }
    
    void ball() {
      ball_x = ball_x+ball_speed_x; //ball movement
      ball_y = ball_y+ball_speed_y;
      
      if (ball_x < 30) { //player 1
        if (ball_y < (player_y+55) && ball_y > (player_y-55)) {
          ball_speed_x = (-ball_speed_x)+1;
          ball_speed_y = ball_speed_y-(player_y - ball_y)*0.01;
          round = round+1;
          soundEffect.rewind();
          soundEffect.play();
          }
          else {
            ball_x = 400;
            ball_y = 300;
            ball_speed_x = 4;
            ball_speed_y = 0;
            round = 0;
            lifes = lifes-1;
           }
        }
        
      if (ball_y > 565 || ball_y < 5) {
        ball_speed_y = -ball_speed_y;
      }
      
      if (ball_x > 750) { //player 2
        if (ball_y < (player_2_y+55) && ball_y > (player_2_y-55)) {
          ball_speed_x = (-ball_speed_x)-1;
          ball_speed_y = ball_speed_y-(player_2_y - ball_y)*0.05;
          round_2 = round_2+1;
          soundEffect.rewind();
          soundEffect.play();
        }
        else {
          ball_x = 400;
          ball_y = 300;
          ball_speed_x = -4;
          ball_speed_y = 0;
          round_2 = 0;
          lifes_2 = lifes_2-1;
        }
      }
    }
    void music() {
      if (lifes < 0 || lifes_2 < 0) {
        backgroundMusic.pause();
        lose.play();
      }
      if (round == 15 || round_2 == 15) {
        backgroundMusic.pause();
        win.play();
      }
      if (round == 16 || round_2 == 16) {
        backgroundMusic.loop();
      }
    }
    void pizzaChef(float xPos, float yPos) {
      if (ball_speed_x < 0) {
        image(chef, xPos, yPos);
      }
      else {
        image(chef2, xPos, yPos);
      }
    }
     void pizzaMaker() {
      noStroke();
      if (round == 1) {
        pizzaDough(200, height/2);
      }
      else if (round == 2) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
      }
      else if (round == 3) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
      }
      else if (round == 4) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
      }
      else if (round == 5) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
      }
      else if (round == 6) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
      }
      else if (round == 7) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
        peperoni(250, 380);
      }
      else if (round == 8) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
        peperoni(250, 380);
        peperoni(230, 220);
      }
      else if (round == 9) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
        peperoni(250, 380);
        peperoni(230, 220);
        champion(250, 310);
      }
      else if (round == 10) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
        peperoni(250, 380);
        peperoni(230, 220);
        champion(250, 310);
        basil(190, 340);
      }
      else if (round == 11) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
        peperoni(250, 380);
        peperoni(230, 220);
        champion(250, 310);
        basil(190, 340);
        peperoni(110, 265);
      }
      else if (round == 12) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
        peperoni(250, 380);
        peperoni(230, 220);
        champion(250, 310);
        basil(190, 340);
        peperoni(110, 265);
        champion(170, 240);
      }
      else if (round == 13) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
        peperoni(250, 380);
        peperoni(230, 220);
        champion(250, 310);
        basil(190, 340);
        peperoni(110, 265);
        champion(170, 240);
        peperoni(300, 315);
      }
      else if (round == 14) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
        peperoni(250, 380);
        peperoni(230, 220);
        champion(250, 310);
        basil(190, 340);
        peperoni(110, 265);
        champion(170, 240);
        peperoni(300, 315);
        basil(130, 220);
      }
      else if (round == 15) {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
        peperoni(250, 380);
        peperoni(230, 220);
        champion(250, 310);
        basil(190, 340);
        peperoni(110, 265);
        champion(170, 240);
        peperoni(300, 315);
        basil(130, 220);
        peperoni(160, 380);
     }
     else if (round == 0) {
     }
     else {
        pizzaDough(200, height/2);
        sauce(200, height/2);
        cheese(200, height/2);
        peperoni(200, height/2);
        
        champion(120, 320);
        basil(280, 230);
        peperoni(250, 380);
        peperoni(230, 220);
        champion(250, 310);
        basil(190, 340);
        peperoni(110, 265);
        champion(170, 240);
        peperoni(300, 315);
        basil(130, 220);
        peperoni(160, 380);
       }
     }
     
    void pizzaMaker_2() {
      noStroke();
      if (round_2 == 1) {
        pizzaDough(600, height/2);
      }
      else if (round_2 == 2) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
      }
      else if (round_2 == 3) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
      }
      else if (round_2 == 4) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
      }
      else if (round_2 == 5) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
      }
      else if (round_2 == 6) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
      }
      else if (round_2 == 7) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
        peperoni(650, 380);
      }
      else if (round_2 == 8) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
        peperoni(650, 380);
        peperoni(630, 220);
      }
      else if (round_2 == 9) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
        peperoni(650, 380);
        peperoni(630, 220);
        champion(650, 310);
      }
      else if (round_2 == 10) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
        peperoni(650, 380);
        peperoni(630, 220);
        champion(650, 310);
        basil(690, 340);
      }
      else if (round_2 == 11) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
        peperoni(650, 380);
        peperoni(630, 220);
        champion(650, 310);
        basil(690, 340);
        peperoni(510, 265);
      }
      else if (round_2 == 12) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
        peperoni(650, 380);
        peperoni(630, 220);
        champion(650, 310);
        basil(690, 340);
        peperoni(510, 265);
        champion(570, 240);
      }
      else if (round_2 == 13) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
        peperoni(650, 380);
        peperoni(630, 220);
        champion(650, 310);
        basil(690, 340);
        peperoni(510, 265);
        champion(570, 240);
        peperoni(700, 315);
      }
      else if (round_2 == 14) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
        peperoni(650, 380);
        peperoni(630, 220);
        champion(650, 310);
        basil(690, 340);
        peperoni(510, 265);
        champion(570, 240);
        peperoni(700, 315);
        basil(530, 220);
      }
      else if (round_2 == 15) {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
        peperoni(650, 380);
        peperoni(630, 220);
        champion(650, 310);
        basil(690, 340);
        peperoni(510, 265);
        champion(570, 240);
        peperoni(700, 315);
        basil(530, 220);
        peperoni(660, 380);
     }
     else if (round_2 == 0) {
     }
     else {
        pizzaDough(600, height/2);
        sauce(600, height/2);
        cheese(600, height/2);
        peperoni(600, height/2);
        champion(520, 320);
        basil(680, 230);
        peperoni(650, 380);
        peperoni(630, 220);
        champion(650, 310);
        basil(690, 340);
        peperoni(510, 265);
        champion(570, 240);
        peperoni(700, 315);
        basil(530, 220);
        peperoni(660, 380);
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
        ellipse(210, 310, 300, 300);
        fill(100);
        ellipse(200, height/2, 300, 300);
        fill(40);
        ellipse(200, height/2, 270, 270);
        fill(130);
        ellipse(200, height/2, 260, 260);
        fill(70);
        ellipse(250, 250, 40, 40);
        ellipse(150, 250, 40, 40);
        ellipse(120, 350, 40, 40);
        ellipse(200, 350, 40, 40);
        ellipse(280, 350, 40, 40);    
    }
    
    void burn_2() {
        fill(0);
        ellipse(610, 310, 300, 300);
        fill(100);
        ellipse(600, height/2, 300, 300);
        fill(40);
        ellipse(600, height/2, 270, 270);
        fill(130);
        ellipse(600, height/2, 260, 260);
        fill(70);
        ellipse(650, 250, 40, 40);
        ellipse(550, 250, 40, 40);
        ellipse(520, 350, 40, 40);
        ellipse(600, 350, 40, 40);
        ellipse(680, 350, 40, 40);
    }
        void score() {
      fill(0); //Player 1: highscore, lives, game over, etc
      textAlign(LEFT);
      textFont(sar, 16);
      text("HIGHSCORE: "+highscore, 50, 35);
      text("SCORE: "+round, 50, 65); 
      if (round > highscore) {
        highscore = round;
      }
      text("LIFES: "+lifes, 50, 95); 
      if (lifes < 0) {
        ball_speed_x = 0;
        ball_speed_y = 0;
        burn();
        fill(0);
        textFont(sar, 13);
        textAlign(CENTER);
        text("PLAYER 1 BURNED THE PIZZA", 200, height/2);
      }
      if (round == 15 && highscore < 16) { 
        ball_speed_x = 0;
        ball_speed_y = 0;
        ball_x = 380;
        ball_y = 320;
        textFont(sar, 22);
        textAlign(CENTER);
        text("PLAYER 1 WON A PIZZA!", 200, height/2);
        win.play();
      }
      
      fill(0); //Player 2: highscore, lives, game over, etc
      textAlign(LEFT);
      textFont(sar, 16);
      text("HIGHSCORE: "+highscore_2, 630, 35);
      text("SCORE: "+round_2, 630, 65); 
      if (round_2 > highscore_2) {
        highscore_2 = round_2;
      }
      text("LIFES: "+lifes_2, 630, 95); 
      if (lifes_2 < 0) {
        ball_speed_x = 0;
        ball_speed_y = 0;
        burn_2();
        fill(0);
        textFont(sar, 13);
        textAlign(CENTER);
        text("PLAYER 2 BURNED THE PIZZA", 600, height/2);
      }
      if (round_2 == 15 && highscore_2 < 16) { 
        ball_speed_x = 0;
        ball_speed_y = 0;
        ball_x = 380;
        ball_y = 320;
        textFont(sar, 22);
        textAlign(CENTER);
        text("PLAYER 2 WON A PIZZA!", 600, height/2);
        win.play();
      }
    }
    
    void display() {
      pizzaMaker();
      pizzaMaker_2();
      pizzaChef(ball_x, ball_y);
      rectMode(CENTER);
      noStroke();
      fill(0);
      rect(player_x, player_y, 20, 100);
      rect(player_2_x, player_2_y, 20, 100);
    }
}

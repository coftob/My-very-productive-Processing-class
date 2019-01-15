//Pizza Pong
//Maria Dinitz
//You play single player pong and for each point your pizza gets more ingredients. You can win the game by earning 15 points and complete your pizza :D
//or losing your 3 lifes and burn the pizza :( 
//controls: UP and DOWN

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*; //minim library

PImage chef;
PImage background;
PImage wood;
PFont sar;

float player_x;
float player_y;
float ball_x;
float ball_y;
float ball_speed_x;
float ball_speed_y;
int round;
int highscore;
int lifes;

Minim myMinim;
AudioPlayer soundEffect;
AudioPlayer win;
AudioPlayer lose;
AudioPlayer backgroundMusic;

void setup() {
  myMinim = new Minim(this);
  soundEffect = myMinim.loadFile("pongsound.wav");
  win = myMinim.loadFile("win.mp3");
  lose = myMinim.loadFile("gameover.mp3");
  backgroundMusic = myMinim.loadFile("backgroundsong2.mp3");
  
  player_x = 20;
  player_y = 60;
  ball_x = 770;
  ball_y = 300;
  ball_speed_x = -4;
  ball_speed_y = 0;
  round = 0;
  highscore = 0;
  lifes = 3;
  
  chef = loadImage("chef.png");
  background = loadImage("hintergrund.jpg");
  wood = loadImage("wood.png");
  sar = loadFont("OCRAStd-48.vlw");
  
  size(800, 600);
  rectMode(CENTER);
  
  myMinim = new Minim(this);
  backgroundMusic.loop();
}

void draw() {
  //music
  if (lifes < 0) {
    backgroundMusic.pause();
    lose.play();
  }
  if (round == 15) {
    backgroundMusic.pause();
    win.play();
  }
  if (round == 16) {
    backgroundMusic.loop();
  }
  noStroke();
  fill(0);
  background(background);
  rect(player_x, player_y, 20, 100);
  fill(#6A402D);
  image(wood, 0, 0);
  pizzaMaker();
//player movement------------------------------
  if (keyPressed) { 
    if (keyCode == DOWN) {
      if (player_y < 550) {
        player_y = player_y+5;
      }
    }
    if (keyCode == UP) {
      if (player_y > 50) {
        player_y = player_y-5;
      }
    }
  }

//ball movement------------------------------
  ball_x = ball_x+ball_speed_x; 
  ball_y = ball_y+ball_speed_y;
  if (ball_x < 30) {
    if (ball_y < (player_y+55) && ball_y > (player_y-55)) {
      ball_speed_x = (-ball_speed_x)+1;
      ball_speed_y = ball_speed_y-(player_y - ball_y)*0.05;
      round = round+1;
      soundEffect.rewind();
      soundEffect.play();
    }
    else {
      ball_x = 770;
      ball_y = 300;
      ball_speed_x = -4;
      ball_speed_y = 0;
      round = 0;
      lifes = lifes-1;
    }
  }
  if (ball_y > 565 || ball_y < 5) {
    ball_speed_y = -ball_speed_y;
  }
  if (ball_x > 770) {
    ball_speed_x = -ball_speed_x;
  }
  
//highscore, lives, game over, etc
  fill(0);
  textFont(sar, 20);
  text("SCORE: "+round, 660, 35); 
  text("HIGHSCORE: "+highscore, 451, 35);
  if (round > highscore) {
    highscore = round;
  }
  pausePlay(700, 580); 
  
  text("LIFES: "+lifes, 285, 35); 
  if (lifes < 0) {
    ball_speed_x = 0;
    ball_speed_y = 0;
    burn();
    fill(0);
    textFont(sar, 17);
    textAlign(CENTER);
    text("YOU BURNED THE PIZZA", width/2, height/2);
    textFont(sar, 24);
    text("PLAY AGAIN?", width/2, 550);
  }
  if (round == 15 && highscore < 16) { 
    ball_speed_x = 0;
    ball_speed_y = 0;
    ball_x = 380;
    ball_y = 320;
    textFont(sar, 24);
    textAlign(CENTER);
    text("YOU WON A PIZZA!", width/2, height/2);
    text("CONTINUE THIS GAME?", width/2, 515);
    text("PLAY AGAIN?", width/2, 550);
    win.play();
  }
  pizzaChef(ball_x, ball_y);
}

void pausePlay(float xPos, float yPos) {
  pushMatrix();
  translate(xPos, yPos);
  noStroke();
  rect(0, 0, 5, 15);
  rect(10, 0, 5, 15);
  triangle(20, -7.5, 35, 0, 20, 7.5);
  popMatrix();
}

void pizzaChef(float xPos, float yPos) {
  image(chef, xPos, yPos);
}

void mousePressed() {
  //pause and play
  if (mouseX > 697.5 && mouseX < 712.5) {
    if (mouseY > 572.5 && mouseY < 587.5) {
      ball_speed_x = 0;
      ball_speed_y = 0;
    }
  }
  if (mouseX > 722.5 && mouseX < 737.5) {
    if (mouseY > 572.5 && mouseY < 578.5) {
      ball_speed_x = -4;
    }
  }
  //play again
  if (round == 15 || lifes < 0) {
    if (mouseX > 300 && mouseX < 500) {
      if (mouseY > 520 && mouseY < 560) {
        player_x = 20;
        player_y = 60;
        ball_x = 770;
        ball_y = 300;
        ball_speed_x = -4;
        ball_speed_y = 0;
        round = 0;
        lifes = 3;
        backgroundMusic.loop();
      }
    }
  }
  //continue playing
  if (highscore == 15) {
    if (mouseX > 220 && mouseX < 580) {
      if (mouseY > 486 && mouseY < 526) {
        ball_x = 770;
        ball_y = 300;
        ball_speed_x = -12;
        ball_speed_y = 0;
        round = 16;
        backgroundMusic.play();
      }
    }
  }
}

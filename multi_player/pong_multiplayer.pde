/*Pizza Pong
  Maria Dinitz
  
  You play single or multi player pong and for each point your pizza gets more ingredients. 
  You can win the game by earning 15 points and complete your pizza :D
  or losing your 3 lifes and burn the pizza :( 
  
    press [P] for single player
    press [M] for multi player
    press [B] for back the menu*
    controls single player: UP and DOWN
              
    controls multi player: player 1: W and S
                   player 2: UP and DOWN
   
   *back to the menu means, you pause the current game and entering the menu. By returning to either single player or multi player you can continue to play
*/

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim myMinim;
AudioPlayer soundEffect;
AudioPlayer win;
AudioPlayer lose;
AudioPlayer backgroundMusic;

MultiPlayer mp;
SinglePlayer sp;

PImage background;
PImage chef;
PImage chef2;
PImage wood;
PImage singleWood;
PFont sar;
PImage menuPic;
PImage back;

Boolean one;
Boolean two;
Boolean menu;

void setup() {
  mp = new MultiPlayer();
  sp = new SinglePlayer();
  
  myMinim = new Minim(this);
  soundEffect = myMinim.loadFile("pongsound.wav");
  win = myMinim.loadFile("win.mp3");
  lose = myMinim.loadFile("gameover.mp3");
  backgroundMusic = myMinim.loadFile("backgroundsong2.mp3");
  
  chef = loadImage("chef.png");
  chef2 = loadImage("chef2.png");
  wood = loadImage("wood.jpg");
  singleWood = loadImage("wood.png");
  background = loadImage("hintergrund.jpg");
  menuPic = loadImage("menu.jpg");
  back = loadImage("back.png");
  sar = loadFont("OCRAStd-48.vlw");
  
  size(800, 600);
  one = false;
  two = false;
  menu = true;
  
  myMinim = new Minim(this);
  backgroundMusic.loop();
}

void draw() {
  background(background);
  if (one == true) {
    image(singleWood, 0, 0);
    image(back, 0, 0);
    sp.keyControls();
    sp.ball();
    sp.score();
    sp.music();
    sp.pizzaMaker();
    sp.display();
  }
  if (two == true) {
    image(wood, 0, 0);
    image(back, 0, 0);
    mp.keyControls();
    mp.ball();
    mp.score();
    mp.music();
    mp.pizzaMaker();
    mp.pizzaMaker_2();
    mp.display();  
  }
  if (menu == true) {
    launcher();
  }
 }
 
void keyPressed() {
 if (key == 'p') {
   one = true;
   two = false;
   menu = false;
 }
 else if (key == 'm') {
   one = false;
   two = true;
   menu = false;
 }
 else if (key == 'b') {
   one = false;
   two = false;
   menu = true;
 }
}

void launcher() {
  image(menuPic, 0, 0);
}

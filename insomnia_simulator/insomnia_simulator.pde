/*homework 05, Insomnia Simulator
  Maria Dinitz
  This is Pete. He suffers from Insomnia. Control his stress level with the sliders and see stress monsters coming out of his head. You decide, what he should worry about.*/

import controlP5.*;
ControlP5 cp5;

Menu menu;
StressMonster []  monster= new StressMonster[1000];

PFont roboto;
PFont robotoBig;
PImage head;
PImage wall;
float monsterSpeed;
float opacity;
float monsterScale;
float amount;
Boolean menuOpen;
Boolean hoverBack;
Boolean hoverDefault;

void setup() {
  menu = new Menu();
  cp5 = new ControlP5(this);
  size(900, 900);
  monsterScale = 0.55;
  monsterSpeed = 5.5;
  opacity = 150;
  amount = 52.5;
  menuOpen = true;
  head = loadImage("head.PNG");
  wall = loadImage("wall.PNG");
  roboto = loadFont("Roboto-Medium-10.vlw");
  robotoBig = loadFont("Roboto-Medium-14.vlw");
  
  cp5.addSlider("relationships") //change speed value
     .setPosition(50, 10)
     .setSize(300,20)
     .setRange(1, 10)
     .setColorBackground(color(225, 50))
     .setColorForeground(color(225, 50))
     .setColorActive(color(41, 72, 162))
     .setValue(5.5)
     .setLabel("broken relationships")
     .setFont(roboto)
     ;
  cp5.getController("relationships").getValueLabel().setVisible(false);
  cp5.getController("relationships").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);

     
  cp5.addSlider("opportunities") //change opacity
     .setPosition(50, 50)
     .setSize(300,20)
     .setRange(50, 250)
     .setColorBackground(color(225, 50))
     .setColorForeground(color(225, 50))
     .setColorActive(color(41, 72, 162))
     .setValue(150)
     .setLabel("missed opportunities")
     .setFont(roboto)
     ;
  cp5.getController("opportunities").getValueLabel().setVisible(false);
  cp5.getController("opportunities").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  
  cp5.addSlider("bankAccount") //change size
     .setPosition(50, 90)
     .setSize(300,20)
     .setRange(0.1, 1)
     .setColorBackground(color(225, 50))
     .setColorForeground(color(225, 50))
     .setColorActive(color(41, 72, 162))
     .setValue(0.55)
     .setLabel("empty bank account")
     .setFont(roboto)
     ;  
  cp5.getController("bankAccount").getValueLabel().setVisible(false);
  cp5.getController("bankAccount").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  
  cp5.addSlider("purposeOfExistence") //change amount of objects
     .setPosition(50, 130)
     .setSize(300,20)
     .setRange(5, 100)
     .setColorBackground(color(225, 50))
     .setColorForeground(color(225, 50))
     .setColorActive(color(41, 72, 162))
     .setValue(52.5)
     .setLabel("what's the purpose of existence?")
     .setFont(roboto)
     ;  
  cp5.getController("purposeOfExistence").getValueLabel().setVisible(false);
  cp5.getController("purposeOfExistence").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  
  for(int i = 0; i < 100; i++) {
  monster[i] = new StressMonster();
  }
}

void draw() {
  background(wall);
  
  for(int i = 0; i < amount; i++) {
    monster[i].display();
    monster[i].move();
  }
  image(head, 0, 0);
  if(menuOpen == true) {
    menu.display();
    menu.startButton();
  }
  backToMenu();
  defaultValue();
}
void bankAccount (float newSize) {
  monsterScale = newSize;
}

void relationships(float newSpeed) {
  monsterSpeed = newSpeed;
}

void opportunities(float newOpacity) {
  opacity = newOpacity;
}

void purposeOfExistence(float newAmount) {
  amount = newAmount;
}

void defaultValue() { //set sliders back to default - button
    if(mouseX > 700 && mouseX < 850) {
      if(mouseY > 90 && mouseY < 150) {
        fill(41, 72, 162);
        hoverDefault = true;
      }
      else {
        fill(255, 50);
        hoverDefault = false;
      }
    }
    else {
      fill(255, 50);
      hoverDefault = false;
    }
    noStroke();
    rect(700, 90, 150, 60);
    fill(225);
    textSize(10);
    textFont(robotoBig);
    text("BACK TO DEFAULT", 780, 125);
  }
  
void backToMenu() { //back to menu button
    if(mouseX > 700 && mouseX < 850) {
      if(mouseY > 10 && mouseY < 70) {
        fill(41, 72, 162);
        hoverBack = true;
      }
      else {
        fill(255, 50);
        hoverBack = false;
      }
    }
    else {
      fill(255, 50);
      hoverBack = false;
    }
    rectMode(CORNER);
    noStroke();
    rect(700, 10, 150, 60);
    fill(225);
    textSize(10);
    textFont(robotoBig);
    text("BACK TO MENU", 780, 45);
  }
  
  void mouseClicked() {
    if(menuOpen == false && hoverBack == true) { //back to menu
      menuOpen = true;
    }
    if(menuOpen == false && hoverDefault == true) { //default
      monsterScale = 0.55;
      monsterSpeed = 5.5;
      opacity = 150;
      amount = 52.5;
    }
  }

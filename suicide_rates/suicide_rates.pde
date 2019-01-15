//suicide statistics, homework for day 6
//Maria Dinitz
//Hover over the picture of each generation and see in which contry and year the suicide rates were the highest. You can differenciate between the statistics for men and women.

String csv[];
String myData[][];
PImage gen;
PImage malefemale;
PFont font;
PFont font2;
Boolean female;
Boolean male;

void setup() {
  size(800, 600);
  gen = loadImage("Generations-.png");
  malefemale = loadImage("malefemale.png");
  csv = loadStrings("master.csv");
  font = createFont("Lucida Console", 18);
  font2 = createFont("Lucida Console", 12);
  female = true;
  male = false;
  myData = new String[csv.length][11];
  for(int i = 0; i < csv.length; i++) {
    myData[i] = csv[i].split(",");
  }
}


void draw() {
  if(female == true) {
    background(#FFDEE8);
  } else {
    background(#DEE7FF);
  }
  noStroke();
  fill(0, 30);
  rect(0, 300, width, 300);
  fill(0);
  textFont(font);
  textAlign(CENTER);
  text("The highest suicide rates in each generation", width/2, 40);
  text("(country and year)", width/2, 60);
  gen.resize(600, 300);
  image(gen, 100, 100);
  malefemale.resize(194, 102);
  image(malefemale, 300, 478);
  fill(0);
  femaleStat();
  maleStat();
  hover();
  
  if(male == true && female == true) {
    println("adam and eve");
  } else {
    println("adam and steve");
  }
}

void mouseClicked() {
  if(mouseX > 300 && mouseX < 400 && mouseY > 480 && mouseY < 580) {
    female = true;
    male  = false;
    println("woman");
  }
  if(mouseX > 400 && mouseX < 500 && mouseY > 480 && mouseY < 580) {
    female = false;
    male  = true;
    println("man");
  }
}

void femaleStat() {
 textAlign(LEFT);
 textFont(font2);
 for(int i = 0; i < myData.length; i++) {
  if(female == true) {
   if(mouseX > 100 && mouseX < 200 && mouseY > 100 && mouseY < 400) { //silent generation
      if(myData[i][4].equals("3499")) {
        text(myData[i][0], 100, 430);
        text(myData[i][1], 100, 450);
      }
    }
    if(mouseX > 210 && mouseX < 310 && mouseY > 100 && mouseY < 400) { //baby boomers
      if(myData[i][5].equals("42836835")) {
        text(myData[i][0], 210, 430);
        text(myData[i][1], 210, 450);
      }
    }
    if(mouseX > 340 && mouseX < 440 && mouseY > 100 && mouseY < 400) { //gen x
      if(myData[i][5].equals("41531809")) {
        text(myData[i][0], 350, 430);
        text(myData[i][1], 350, 450);
      }
    }
    if(mouseX > 460 && mouseX < 560 && mouseY > 100 && mouseY < 400) { //millenials
      if(myData[i][5].equals("21555712")) {
        text(myData[i][0], 460, 430);
        text(myData[i][1], 460, 450);
      }
    }
    if(mouseX > 590 && mouseX < 690 && mouseY > 100 && mouseY < 400) { //gen z
      if(myData[i][5].equals("20342901")) {
        text(myData[i][0], 600, 430);
        text(myData[i][1], 600, 450);
      }
    }
   } 
 }
}

void maleStat() {
 textAlign(LEFT);
 for(int i = 0; i < myData.length; i++) {    
  if(male == true) {
    if(mouseX > 100 && mouseX < 200 && mouseY > 100 && mouseY < 400) { //silent generation
      if(myData[i][4].equals("12517")) {
        text(myData[i][0], 100, 430);
        text(myData[i][1], 100, 450);
      }
    }
    if(mouseX > 210 && mouseX < 310 && mouseY > 100 && mouseY < 400) { //baby boomers
      if(myData[i][4].equals("22338")) {
        text(myData[i][0], 210, 430);
        text(myData[i][1], 210, 450);
      }
    }
    if(mouseX > 340 && mouseX < 440 && mouseY > 100 && mouseY < 400) { //gen x
      if(myData[i][4].equals("11767")) {
        text(myData[i][0], 350, 430);
        text(myData[i][1], 350, 450);
      }
    }
    if(mouseX > 460 && mouseX < 560 && mouseY > 100 && mouseY < 400) { //millenials
      if(myData[i][4].equals("6945")) {
        text(myData[i][0], 460, 430);
        text(myData[i][1], 460, 450);
      }
    }
    if(mouseX > 590 && mouseX < 690 && mouseY > 100 && mouseY < 400) { //gen z
      if(myData[i][5].equals("21264881")) {
        text(myData[i][0], 600, 430);
        text(myData[i][1], 600, 450);
      }
    }
  }
 }
}

void hover() {
  if(mouseX > 300 && mouseX < 400 && mouseY > 480 && mouseY < 580) {
    noStroke();
    fill(0, 50);
    rect(300, 480, 100, 100);
    }
  if(mouseX > 400 && mouseX < 500 && mouseY > 480 && mouseY < 580) {
    noStroke();
    fill(0, 50);
    rect(width/2, 480, 100, 100);
    }
}

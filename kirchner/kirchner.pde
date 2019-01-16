float xoff = -5;
int i = 75;
int j = 75;

void setup() {
  size(580, 680);
}


void draw() {

  background(#D74F15);

  //background objects----------------------------
  noStroke();
  fill(#8BAF27);
  rect(300, 0, 400, 700);


  fill(#F6F4EE);
  noStroke();
  beginShape();
  vertex(10, 60);
  vertex(200, 190);
  vertex(200, 680);
  vertex(100, 680);
  endShape(CLOSE);

  fill(#140C0C);
  beginShape();
  vertex(240, 0);
  vertex(550, 0);
  vertex(480, 680);
  vertex(240, 680);
  endShape(CLOSE);

  //woman----------------------------------------
  if (mousePressed) {
    pushMatrix();
    xoff = xoff + .2;

    float n = noise(xoff) * width - 190;

    translate(n, 20);

    fill(#E9B233); //body
    beginShape();
    curveVertex(400, 150);
    curveVertex(360, 130);
    curveVertex(305, 160);
    curveVertex(335, 280);
    curveVertex(300, 450);
    curveVertex(410, 570);
    curveVertex(450, 500);
    curveVertex(420, 300);
    curveVertex(430, 220);
    curveVertex(440, 140);
    curveVertex(360, 130);
    endShape(CLOSE);

    beginShape(); //right arm
    curveVertex(470, 140);
    curveVertex(440, 140);
    curveVertex(420, 190);
    curveVertex(460, 270);
    curveVertex(500, 450);
    curveVertex(495, 310);
    curveVertex(466, 200);
    curveVertex(440, 140);
    endShape(CLOSE);

    beginShape(); //left arm
    curveVertex(350, 150);
    curveVertex(320, 140);
    curveVertex(300, 170);
    curveVertex(250, 300);
    curveVertex(260, 390);
    curveVertex(280, 280);
    curveVertex(330, 200);
    curveVertex(360, 160);
    endShape(CLOSE);

    fill(#572A13);
    beginShape(); //boobs
    vertex(330, 220);
    bezierVertex(340, 230, 355, 230, 370, 220);
    bezierVertex(355, 238, 340, 238, 330, 220);
    endShape();
    beginShape();
    vertex(380, 222);
    bezierVertex(390, 232, 410, 232, 420, 217);
    bezierVertex(410, 240, 390, 240, 380, 222);
    endShape();

    triangle(350, 380, 420, 370, 400, 510); //bikini zone
    fill(#E9B233);
    beginShape();
    vertex(350, 380);
    bezierVertex(380, 420, 400, 420, 425, 360);
    endShape();
    beginShape();
    vertex(350, 380);
    bezierVertex(390, 460, 410, 500, 300, 450);
    endShape();
    beginShape();
    vertex(423, 365);
    bezierVertex(400, 420, 390, 450, 402, 505);
    endShape();

    fill(#BC5E17); //belly
    beginShape();
    vertex(380, 260);
    bezierVertex(378, 290, 380, 320, 382, 350);
    bezierVertex(385, 320, 383, 290, 380, 260);
    endShape();

    beginShape(); //neck
    vertex(353, 132);
    bezierVertex(370, 165, 380, 180, 388, 135);
    bezierVertex(400, 80, 380, 60, 350, 100);
    endShape();

    fill(#E9B233); //head
    beginShape();
    curveVertex(380, 25);
    curveVertex(345, 35);
    curveVertex(320, 83);
    curveVertex(335, 90);
    curveVertex(335, 120);
    curveVertex(390, 105);
    curveVertex(390, 70);
    curveVertex(380, 25);
    curveVertex(330, 35);
    endShape(CLOSE);

    fill(#72462E); //hair
    beginShape();
    curveVertex(320, 50);
    curveVertex(323, 50);
    curveVertex(345, 10);
    curveVertex(390, 12);
    curveVertex(430, 42);
    curveVertex(428, 90);
    curveVertex(380, 105);
    curveVertex(365, 95);
    curveVertex(370, 70);
    curveVertex(365, 45);
    curveVertex(350, 38);
    curveVertex(323, 50);
    curveVertex(320, 45);
    endShape(CLOSE);

    fill(#BC5E17); //face shadow
    beginShape();
    vertex(340, 50);
    vertex(325, 80);
    vertex(345, 82);
    vertex(340, 70);
    vertex(364, 60);
    vertex(363, 50);
    endShape(CLOSE);

    fill(#261411); //eye
    triangle(345, 55, 345, 65, 365, 60);
    beginShape();
    vertex(340, 50);
    bezierVertex(350, 45, 360, 45, 365, 50);
    bezierVertex(360, 50, 350, 50, 340, 50);
    endShape();
    popMatrix();
  }
  //background object----------------------------
  fill(#CE413B);
  ellipse(500, 600, 200, 300);


  //ear------------------------------------------
  fill(#DDAD10); 
  beginShape();
  curveVertex(170, 310);
  curveVertex(149, 257);
  curveVertex(113, 180);
  curveVertex(143, 165);
  curveVertex(166, 201);
  curveVertex(250, 310);
  endShape(CLOSE);

  //neck-----------------------------------------
  noStroke();
  fill(#E09B11);
  beginShape();
  vertex(145, 220);
  vertex(148, 350);
  vertex(200, 450);
  vertex(252, 370);
  vertex(220, 269);
  endShape(CLOSE);

  //jacket-------------------------------------------
  fill(#3B1C40); //left side
  noStroke();
  beginShape();
  vertex(10, 480);
  vertex(116, 739);
  vertex(249, 680);
  vertex(220, 461);
  endShape(CLOSE);
  beginShape();
  curveVertex(0, 651);
  curveVertex(7, 480);
  curveVertex(41, 423);
  curveVertex(103, 388);
  curveVertex(130, 379);
  curveVertex(148, 315);
  curveVertex(151, 477);
  curveVertex(145, 680);
  endShape(CLOSE);
  beginShape();
  curveVertex(200, 0);
  curveVertex(119, 489);
  curveVertex(146, 327);
  curveVertex(150, 343);
  curveVertex(210, 423);
  curveVertex(219, 487);
  curveVertex(198, 530);
  endShape(CLOSE);

  fill(#544283); //right side
  beginShape(); 
  vertex(410, 467);
  vertex(390, 680);
  vertex(228, 680);
  vertex(202, 523);
  endShape(CLOSE);
  beginShape();
  curveVertex(410, 680);
  curveVertex(410, 468);
  curveVertex(270, 393);
  curveVertex(248, 339);
  curveVertex(245, 374); 
  curveVertex(217, 424);  
  curveVertex(184, 471);
  curveVertex(202, 784);
  curveVertex(0, 600);
  endShape(CLOSE);

  noFill(); //red stripe things
  strokeWeight(12);
  stroke(#96191A);
  beginShape();
  curveVertex(91, 0);
  curveVertex(238, 320);
  curveVertex(219, 422);
  curveVertex(192, 440);
  curveVertex(187, 509);
  curveVertex(204, 685);
  curveVertex(186, 1000);
  endShape();

  beginShape(); //red stripe things 2
  curveVertex(316, 0);
  curveVertex(151, 301);
  curveVertex(210, 430);
  curveVertex(220, 540);
  endShape();

  fill(#E09B11); //red stripe things 3
  noStroke();
  beginShape();
  vertex(238, 357);
  vertex(155, 324);
  vertex(147, 296);
  vertex(162, 272);
  endShape(CLOSE);

  fill(#422942); //left sleeve
  beginShape();
  curveVertex(246, 15);
  curveVertex(16, 451);
  curveVertex(22, 632);
  curveVertex(41, 812);
  curveVertex(79, 692);
  curveVertex(191, 724);
  curveVertex(138, 694);
  curveVertex(112, 655);
  curveVertex(66, 509);
  curveVertex(0, 19);
  endShape(CLOSE);

  fill(#462C52); //left sleeve 2
  beginShape();
  curveVertex(0, 578);
  curveVertex(149, 680);
  curveVertex(272, 730);
  curveVertex(343, 650);
  curveVertex(234, 565);
  curveVertex(206, 606);
  curveVertex(400, 0);
  endShape(CLOSE);

  fill(#251E15); //black sleeve thing
  beginShape();
  curveVertex(320, 400);
  curveVertex(226, 563);
  curveVertex(192, 621);
  curveVertex(185, 660);
  curveVertex(305, 691);
  curveVertex(344, 660);
  curveVertex(396, 438);
  endShape(CLOSE);

  fill(#FDF9E7); //inside sleeve
  beginShape();
  curveVertex(259, 255);
  curveVertex(227, 564);
  curveVertex(343, 661);
  curveVertex(506, 650);
  endShape(CLOSE);

  beginShape(); //inside sleeve 2
  curveVertex(-87, 604);
  curveVertex(227, 565);
  curveVertex(342, 661);
  curveVertex(165, 968);
  endShape(CLOSE);

  noFill(); //red stripe
  stroke(#96191A);
  strokeWeight(20);
  strokeCap(SQUARE);
  beginShape();
  curveVertex(-106, 402);
  curveVertex(176, 641);
  curveVertex(318, 696);
  curveVertex(500, 680);
  endShape();

  noStroke(); //right sleeve
  fill(#2D1D2A); 
  beginShape();
  curveVertex(300, 0);
  curveVertex(357, 712);
  curveVertex(350, 944);
  curveVertex(403, 459);
  curveVertex(465, 885);
  curveVertex(391, 682);
  curveVertex(433, 651);
  curveVertex(472, 517);
  curveVertex(562, 546);
  curveVertex(541, 699);
  curveVertex(697, 755);
  curveVertex(466, 0);
  endShape(CLOSE);

  fill(#251E15); //black sleeve thing
  beginShape();
  vertex(460, 480);
  vertex(560, 580);
  vertex(550, 610);
  vertex(480, 595);
  vertex(450, 580);
  endShape(CLOSE);

  fill(#FDF9E7); //inside sleeve
  beginShape();
  curveVertex(794, 615);
  curveVertex(560, 587);
  curveVertex(460, 476);
  curveVertex(558, 460);
  endShape(CLOSE);

  beginShape(); //inside sleeve 2
  curveVertex(438, 646);
  curveVertex(560, 588);
  curveVertex(461, 480);
  curveVertex(-207, 431);
  endShape(CLOSE);

  noFill(); //red stripe
  stroke(#96191A);
  strokeWeight(20);
  strokeCap(SQUARE);
  beginShape();
  curveVertex(362, 587);
  curveVertex(449, 577);
  curveVertex(547, 618);
  curveVertex(1064, 761);
  endShape();

  stroke(225); //shoulder patches
  strokeWeight(2);
  fill(#DD2617);
  beginShape();
  vertex(50, 435);
  vertex(110, 395);
  vertex(140, 395);
  vertex(136, 418);
  vertex(80, 465);
  endShape(CLOSE);

  beginShape();
  vertex(270, 418);
  vertex(292, 410);
  vertex(370, 440);
  vertex(355, 470);
  vertex(280, 440);
  endShape(CLOSE);

  fill(#EBE128);
  noStroke();
  ellipse(220, 480, 37, 37);

  //left hand--------------------------------------
  noStroke(); 
  fill(#C6B04F);
  beginShape();
  curveVertex(215, 688);
  curveVertex(259, 571);
  curveVertex(279, 545);
  curveVertex(323, 559);
  curveVertex(288, 652);
  curveVertex(248, 609);
  curveVertex(346, 449);
  endShape(CLOSE);

  stroke(#251E15);
  strokeWeight(25);
  noFill();
  beginShape();
  curveVertex(200, 500);
  curveVertex(224, 600);
  curveVertex(315, 665);
  curveVertex(400, 647);
  endShape();

  noStroke();
  fill(#A9341D);
  beginShape();
  curveVertex(183, 563);
  curveVertex(268, 563);
  curveVertex(305, 572);
  curveVertex(318, 554);
  curveVertex(271, 556);
  curveVertex(225, 652);
  endShape(CLOSE);

  //right hand---------------------------------
  fill(#E7CC24);
  beginShape();
  vertex(464, 503);
  vertex(502, 556);
  vertex(529, 459);
  vertex(480, 421);
  endShape(CLOSE);

  noFill();
  stroke(#251E15);
  strokeWeight(8);
  beginShape();
  curveVertex(468, 505);
  curveVertex(462, 497);
  curveVertex(505, 555);
  curveVertex(515, 544);
  endShape();

  noStroke();
  fill(#E7CC24);
  beginShape();
  curveVertex(505, 670);
  curveVertex(476, 449);
  curveVertex(515, 399);
  curveVertex(572, 449);
  curveVertex(557, 477);
  curveVertex(506, 469);
  curveVertex(509, 620);
  endShape(CLOSE);

  //head---------------------------------------
  noStroke(); 
  fill(#DEB815);
  beginShape();
  curveVertex(115, 97);
  curveVertex(130, 170);
  curveVertex(185, 321);
  curveVertex(234, 343);
  curveVertex(263, 280);
  curveVertex(272, 228);
  curveVertex(292, 90);
  curveVertex(200, 60);
  curveVertex(115, 0);
  curveVertex(115, 100);
  curveVertex(100, 45);
  endShape(CLOSE);


  //hat----------------------------------------
  noStroke();
  fill(#96191A); //red
  beginShape();
  vertex(108, 0);
  vertex(302, 0);
  vertex(295, 100);
  vertex(115, 100);
  endShape(CLOSE);
  beginShape();
  curveVertex(310, 30);
  curveVertex(295, 100);
  curveVertex(220, 143);
  curveVertex(115, 100);
  curveVertex(100, 60);
  endShape(CLOSE);

  fill(#0D0A0B); //black
  beginShape();
  vertex(108, 0);
  vertex(302, 0);
  vertex(295, 90);
  vertex(115, 90);
  endShape(CLOSE);
  beginShape();
  curveVertex(310, 20);
  curveVertex(295, 90);
  curveVertex(220, 133);
  curveVertex(115, 90);
  curveVertex(100, 50);
  endShape(CLOSE);

  fill(#96191A); //red
  beginShape();
  vertex(108, 0);
  vertex(302, 0);
  vertex(297, 70);
  vertex(113, 70);
  endShape(CLOSE);
  beginShape();
  curveVertex(310, 20);
  curveVertex(295, 70);
  curveVertex(215, 106);
  curveVertex(115, 70);
  curveVertex(100, 50);
  endShape(CLOSE);

  fill(#3D3C85); //blue
  beginShape();
  vertex(108, 0);
  vertex(302, 0);
  vertex(298, 60);
  vertex(112, 60);
  endShape(CLOSE);
  beginShape();
  curveVertex(310, 20);
  curveVertex(298, 60);
  curveVertex(215, 96);
  curveVertex(112, 60);
  curveVertex(100, 50);
  endShape(CLOSE);

  fill(#96191A);  //red
  beginShape();
  vertex(108, 0);
  vertex(302, 0);
  vertex(300, 30);
  vertex(110, 30);
  endShape(CLOSE);
  beginShape();
  curveVertex(310, 20);
  curveVertex(300, 30);
  curveVertex(215, 66);
  curveVertex(110, 30);
  curveVertex(100, 50);
  endShape(CLOSE);

  fill(#393270); //blue
  beginShape();
  vertex(108, 0);
  vertex(302, 0);
  vertex(301, 20);
  vertex(109, 20);
  endShape(CLOSE);
  beginShape();
  curveVertex(310, 20);
  curveVertex(301, 20);
  curveVertex(215, 56);
  curveVertex(107, 20);
  curveVertex(100, 50);
  endShape(CLOSE);

  fill(#0D0A0B); //circle thing on the hat
  stroke(#FDF0DF);
  strokeWeight(2);
  ellipse(220, 80, 17, 17);
  fill(#96191A);
  stroke(#FDF0DF);
  strokeWeight(2);
  ellipse(220, 80, 8, 8);
  fill(#FDF0DF);
  ellipse(230, 120, 20, 10);

  //face----------------------------------------
  fill(#AB7B18); //face shadow 1
  noStroke();
  beginShape();
  curveVertex(226, 240);
  curveVertex(205, 275);
  curveVertex(210, 242);
  curveVertex(205, 220);
  curveVertex(188, 216);
  curveVertex(175, 207);
  curveVertex(158, 200);
  curveVertex(146, 161);
  curveVertex(184, 149);
  curveVertex(220, 168);
  curveVertex(240, 225);
  curveVertex(223, 234);
  curveVertex(216, 240);
  curveVertex(190, 240);
  endShape(CLOSE);

  fill(#604A2B); // face shadow 2
  beginShape();
  curveVertex(240, 250);
  curveVertex(253, 247);
  curveVertex(259, 238);
  curveVertex(250, 210);
  curveVertex(240, 190);
  curveVertex(238, 162);
  curveVertex(255, 146);
  curveVertex(275, 140);
  curveVertex(283, 143);
  curveVertex(278, 192);
  curveVertex(268, 220);
  curveVertex(260, 260);
  curveVertex(260, 270);
  curveVertex(270, 290);
  endShape(CLOSE);

  fill(#551610); //nose
  beginShape();
  curveVertex(260, 235);
  curveVertex(254, 237);
  curveVertex(251, 239);
  curveVertex(248, 242);
  curveVertex(252, 240);
  curveVertex(244, 246);
  endShape(CLOSE);

  beginShape(); //nose 2
  curveVertex(253, 236);
  curveVertex(242, 238);
  curveVertex(233, 239);
  curveVertex(225, 242);
  curveVertex(227, 248);
  curveVertex(242, 238);
  curveVertex(253, 233);
  endShape(CLOSE);

  fill(#C07D18); //nose 3
  beginShape();
  curveVertex(260, 240);
  curveVertex(240, 250);
  curveVertex(235, 268);
  curveVertex(242, 282);
  curveVertex(245, 278);
  curveVertex(241, 252);
  curveVertex(235, 240);
  endShape(CLOSE);

  //eyes-------------------------------------------
  fill(#E0C096);
  beginShape();
  vertex(160, 185);
  bezierVertex(180, 172, 190, 170, 210, 190);
  bezierVertex(200, 205, 180, 200, 160, 185);
  endShape();

  beginShape();
  vertex(248, 175);
  bezierVertex(258, 160, 270, 165, 278, 172);
  bezierVertex(275, 190, 245, 184, 248, 175);
  endShape();

  fill(#1E1838);
  ellipse(185, 183, 33, 30);
  ellipse(263, 175, 22, 22);

  fill(#EFC919);
  beginShape();
  vertex(155, 190);
  bezierVertex(184, 152, 192, 163, 211, 190);
  bezierVertex(190, 170, 170, 178, 155, 190);
  endShape();

  beginShape();
  vertex(242, 180);
  bezierVertex(258, 155, 270, 161, 280, 172);
  bezierVertex(272, 166, 258, 168, 242, 180);
  endShape();

  fill(#ECE359);
  beginShape();
  vertex(248, 180);
  bezierVertex(263, 184, 270, 183, 278, 176);
  bezierVertex(275, 188, 255, 189, 248, 180);
  endShape();

  beginShape();
  vertex(165, 188);
  bezierVertex(175, 195, 185, 196, 203, 194);
  bezierVertex(190, 203, 173, 204, 165, 188);
  endShape();

  //eyebrows----------------------------------------
  fill(#1E0F0A);
  beginShape();
  vertex(145, 158);
  bezierVertex(170, 148, 200, 140, 220, 170);
  bezierVertex(200, 145, 170, 152, 145, 168);
  endShape();

  beginShape();
  vertex(283, 138);
  bezierVertex(270, 138, 250, 146, 239, 161);
  bezierVertex(250, 151, 270, 144, 283, 148);
  endShape();

  //lips and cig---------------------------------------
  fill(#CB4517); //lower lip
  stroke(#B53023);
  strokeWeight(1.5);
  beginShape();
  curveVertex(200, 290);
  curveVertex(210, 300);
  curveVertex(225, 305);
  curveVertex(240, 305);
  curveVertex(252, 298);
  curveVertex(256, 290);
  curveVertex(260, 282);
  endShape();

  pushMatrix();//cig
  translate(mouseX, mouseY);
  rotate(PI/10);
  noStroke(); 
  fill(#D8CAAD);
  rect(0, 0, 12, 70);
  ellipse(6, 70, 12, 12);
  fill(#FFC05A);
  ellipse(6, 0, 12, 12);
  rect(0, 0, 12, 30);
  fill(#D8CAAD);
  ellipse(6, 30, 12, 12);
  fill(#595959);
  ellipse(6, 70, 8, 8);

  if ((mouseX > 210) && (mouseX < 257)) {
    if ((mouseY > 291) && (mouseY < 301)) {
      fill(#FF6D00);
      noStroke();
      ellipse(6, 70, 8, 8);
    }
  }
  popMatrix();


  fill(#A03315); //upper lip
  stroke(#8C2113);
  strokeWeight(1.5);
  beginShape();
  curveVertex(190, 330);
  curveVertex(210, 301);
  curveVertex(224, 287);
  curveVertex(240, 287);
  curveVertex(250, 284);
  curveVertex(257, 291);
  curveVertex(270, 300);
  endShape();
  
  pushMatrix();
  fill(#FFF471); //numbers on shoulder
  translate(70, 438);
  rotate(PI/4);
  text(i, 0, 0);
  i = i+1;
  if (i > 100) {
    i = 0;
  }
  popMatrix();
  
  pushMatrix();
  translate(350, 458);
  rotate(PI/-3);
  text(j, 0, 0);
  j = j-1;
  if (j == 0) {
    j = 75;
  }
  popMatrix();
}

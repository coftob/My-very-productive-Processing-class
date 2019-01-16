//pawn function

void pawn(float xPosition, float yPosition, float zPosition, float size) {
  pushMatrix();
  translate(xPosition, yPosition, zPosition);
    pushMatrix();
      translate(random(-500, 2000), random(-300, 1000), random(-500, -50));
      scale(size);
      fill(pawnColor);
      noStroke();
      
      pushMatrix(); //pawn head
        translate(0, -20);
        sphere(50);
        
        stroke(faceColor); //face
        strokeWeight(1);
        noFill();
        beginShape();
        curveVertex(-30, 0, 50);
        curveVertex(-25, 20, 50);
        curveVertex(0, 30, 50);
        curveVertex(25, 20, 50);
        curveVertex(30, 0, 50);
        endShape();
        
        pushMatrix();
        translate(0, 0, 50);
        noStroke();
        fill(faceColor);
        ellipse(-20, 0, 10, 10);
        ellipse(20, 0, 10, 10);
        popMatrix();
      popMatrix();
      
      fill(pawnColor);
      beginShape(); //top part 1
      vertex(0, 0, 0);
      vertex(0, 30, 80);
      vertex(76, 30, 22);
      
      vertex(0, 0, 0);
      vertex(76, 30, 22);
      vertex(44, 30, -68);
      
      vertex(0, 0, 0);
      vertex(44, 30, -68);
      vertex(-50, 30, -64);
      
      vertex(0, 0, 0);
      vertex(-50, 30, -64);
      vertex(-76, 30, 28);
      
      vertex(0, 0, 0);
      vertex(-76, 30, 28);
      vertex(0, 30, 80);
      endShape();
    
      
      beginShape();  //top part 2
      vertex(-50, 30, -64);
      vertex(-25, 60, -32);
      vertex(22, 60, -34);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(-50, 30, -64);
      vertex(44, 30, -68);
      vertex(22, 60, -34);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(44, 30, -68);
      vertex(76, 30, 22);
      vertex(22, 60, -34);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(22, 60, -34);
      vertex(38, 60, 11);
      vertex(76, 30, 22);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(38, 60, 11);
      vertex(0, 60, 40);
      vertex(76, 30, 22);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(0, 30, 80);
      vertex(76, 30, 22);
      vertex(0, 60, 40);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(0, 30, 80);
      vertex(-76, 30, 28);
      vertex(-38, 60, 14);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(0, 60, 40);
      vertex(-38, 60, 14);
      vertex(0, 30, 80);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(-76, 30, 28);
      vertex(-50, 30, -64);
      vertex(-38, 60, 14);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(-25, 60, -32);
      vertex(-38, 60, 14);
      vertex(-50, 30, -64);
      endShape(CLOSE);
      
      beginShape();  //middle part 1
      vertex(-25, 60, -32);
      vertex(-25, 140, -32);
      vertex(22, 140, -34);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(-25, 60, -32);
      vertex(22, 60, -34);
      vertex(22, 140, -34);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(22, 60, -34);
      vertex(38, 60, 11);
      vertex(22, 140, -34);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(22, 140, -34);
      vertex(38, 140, 11);
      vertex(38, 60, 11);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(38, 140, 11);
      vertex(0, 140, 40);
      vertex(38, 60, 11);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(0, 60, 40);
      vertex(38, 60, 11);
      vertex(0, 140, 40);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(0, 60, 40);
      vertex(-38, 60, 14);
      vertex(-38, 140, 14);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(0, 140, 40);
      vertex(-38, 140, 14);
      vertex(0, 60, 40);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(-38, 60, 14);
      vertex(-25, 60, -32);
      vertex(-38, 140, 14);
      endShape(CLOSE);
      
      beginShape(); 
      vertex(-25, 140, -32);
      vertex(-38, 140, 14);
      vertex(-25, 60, -32);
      endShape(CLOSE);
      
      beginShape(); //bottom part 1
      vertex(0, 100, 0);
      vertex(0, 140, 120);
      vertex(114, 140, 33);
        
      vertex(0, 100, 0);
      vertex(114, 140, 33);
      vertex(66, 140, -102);
       
      vertex(0, 100, 0);
      vertex(66, 140, -102);
      vertex(-75, 140, -96);
        
      vertex(0, 100, 0);
      vertex(-75, 140, -96);
      vertex(-114, 140, 42);
        
      vertex(0, 100, 0);
      vertex(-114, 140, 42);
      vertex(0, 140, 120);
      endShape();
      
      pushMatrix(); //bottom part 2
      translate(0, 140, 120);
      rotateY(radians(145));
      rect(0, 0, 140.405, 30);
      popMatrix();
      
      pushMatrix();
      translate(114, 140, 33);
      rotateY(radians(217));
      rect(0, 0, 143.405, 30);
      popMatrix();
      
      pushMatrix();
      translate(66, 140, -102);
      rotateY(radians(289));
      rect(0, 0, 143.405, 30);
      popMatrix();
      
      pushMatrix();
      translate(-75, 140, -96);
      rect(0, 0, 143.405, 30);
      popMatrix();
      
      pushMatrix();
      translate(-114, 140, 42);
      rotateY(radians(74));
      rect(0, 0, 143.405, 30);
      popMatrix();
      
      beginShape();
      vertex(0, 170, 120);
      vertex(-114, 170, 42);
      vertex(-75, 170, -96);
      endShape();
      
      beginShape();
      vertex(0, 170, 120);
      vertex(-75, 170, -96);
      vertex(66, 170, -102);
      endShape();
      
      beginShape();
      vertex(0, 170, 120);
      vertex(66, 170, -102);
      vertex(114, 170, 33);
      endShape();
    popMatrix();
  popMatrix();
  
  
}

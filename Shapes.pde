
void generateMaskShapes(int _num_shapes) {
  fill(255); 
  noStroke();
  for (int i = 0; i < _num_shapes; i++) {
    float randX = random(0, width);
    float randY = random(0, height);
    float randDia = random(100, 400);
    pushMatrix();
    translate(randX, randY);
    rotate(random(0, PI));

    int randomiser = int(random(0, 3));
    if (randomiser == 0) {  //draw a rectangle
      rectMode(CENTER);
      rect(0, 0, randDia, randDia);  // Black rectangle
    } else if (randomiser == 1) { //draw a circle
      ellipseMode(CENTER);
      ellipse(0, 0, randDia, randDia);  // Black ellipse
    } else {
      triangle(randX - randDia/2, randY + randDia/2, randX, randY - randDia/2, randX + randDia/2, randY + randDia/2);
    }
    popMatrix();
  }
}

void generateOverlayShapes(int _num_shapes) {
  noStroke();
  for (int i = 0; i < _num_shapes; i++) {
    fill(random(0, 255), random(0, 255), random(0, 255), 100); 
    float randX = random(0, width);
    float randY = random(0, height);
    float randDia = random(100, 400);
    pushMatrix();
    translate(randX, randY);
    rotate(random(0, PI));

    int randomiser = int(random(0, 3));
    if (randomiser == 0) {  //draw a rectangle
      rectMode(CENTER);
      rect(0, 0, randDia, randDia);  // Black rectangle
    } else if (randomiser == 1) { //draw a circle
      ellipseMode(CENTER);
      ellipse(0, 0, randDia, randDia);  // Black ellipse
    } else {
      triangle(randX - randDia/2, randY + randDia/2, randX, randY - randDia/2, randX + randDia/2, randY + randDia/2);
    }
    popMatrix();
  }
}
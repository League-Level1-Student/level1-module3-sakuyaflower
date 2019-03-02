int x = 30;
int y = 77;
int birdYVelocity = 3;
int gravity = 1;
int pipeX = 600;
int upperPipeHeight =(int) random(200, 900);
int lowerPipeY = upperPipeHeight+200;
int score = 0;
void draw() {
  background(#FF5858);
  fill(#ECD6FF);        
  stroke(#56148E);
  ellipse(x, y, 40, 40);
  birdYVelocity+=gravity;
  y+=birdYVelocity;
  if (mousePressed) {
    birdYVelocity = -7;
  }
  fill(#10DE9A);
  rect(pipeX, 0, 200, upperPipeHeight);
  fill(#10DE9A);
  rect(pipeX, lowerPipeY, 200, 500);
  pipeX--;
  teleportPipes();
if(intersectsPipes()){
exit();
}
text("Score" + score, 0,40);
}

boolean intersectsPipes() { 
  if (y < upperPipeHeight && x > pipeX && x < (pipeX+200)) {
    return true;
  } else if (y>lowerPipeY && x > pipeX && x < (pipeX+200)) {
    return true;
  } else { 
    return false;
  }
}
void teleportPipes() {
  if (pipeX < -200) {
    pipeX = 1200;
    score++;
  }
}
void setup() {
  size(1200, 1200);
}

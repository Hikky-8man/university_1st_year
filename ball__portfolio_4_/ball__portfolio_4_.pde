float ballX;
float ballY;
float ballWidth;
float speedX;
float speedY;

float holeX;
float holeY;
float holeWidth;
//boolean flag;

void setup() {
  size(600, 600);
  ballX=10;
  ballY=height/2;
  ballWidth=60;
  initialSpeed();
  //initialiseHole();
  holeX=random(0, width);
  holeY=random(0, height);
  holeWidth=random(100, 300);
}
void draw() {
  background(127);
  //initialiseHole(holeX, holeY, holeWidth);
  initialiseHole();
  drawColourCircle(ballX, ballY, ballWidth, color(255, 0, 0));
  moveBall();
  //println(checkCollide(ballX, ballY, ballWidth/2, holeX, holeY, holeWidth/2));
  //(logical) ERROR occurs when boolean value is set to true
  //(logical) ERROR occurs when boolean value is set to false
  if (checkCollide(ballX, ballY, ballWidth/2, holeX, holeY, holeWidth/2)==false) {
  //if (checkCollide(ballX, ballY, ballWidth/2, holeX, holeY, holeWidth/2)==true) {
    //initialSpeed();
    initialiseHole();
    println("true");
    initialSpeed();
  }
  bounceBall();
  //bounceBall(true);
}

boolean checkCollide (float x1, float y1, float diamiter1, float x2, float y2, float diamiter2) {
  //float gap=distance(x1, y1, x2, y2);
  //diamiter1/=2;
  //diamiter2/=2;
  if (distance(x1, y1, x2, y2) >= (diamiter1+diamiter2)) {
    return true;
  } else {
    return false;
  }
}

float distance(float x1, float y1, float x2, float y2) {
  float distance = (x1*y1)+(x2*y2);
  distance=sqrt(distance);
  return distance;
}
  void initialiseHole(){
  fill(0);
  ellipse(holeX, holeY, holeWidth, holeWidth);
  println("x", holeX, " y", holeY, " width", holeWidth);
}

void drawColourCircle(float ballX, float ballY, float ballWidth, color c) {
  fill(c);
  ellipse(ballX, ballY, ballWidth, 60);
}

void moveBall() {
  ballX+=speedX;
  ballY+=speedY;
}

void bounceBall() {
  if (ballX>=width) {
    speedX=-(speedX);
  }
  if (ballX<=0) {
    speedX=abs(speedX);
  }
  if (ballY>=width) {
    speedY=-(speedY);
  }
  if (ballY<=0) {
    speedY=abs(speedY);
  }
}

void initialSpeed() {
  speedX=random(5, 11);
  speedY=random(5, 11);
}

void keyPressed() {
  if (key == 'x') {
    speedX=random(5, 11);
  }
  if (key=='y') {
    speedY=random(5, 11);
  }
}

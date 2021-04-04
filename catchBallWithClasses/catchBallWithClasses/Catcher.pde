class Catcher {
  private float catcherX;
  private float catcherY;
  private float catcherWidth;
  private float catcherSpeed;
  private float catcherHeight;
  private char catcherControl;
  private int catcherScore;

  public Catcher(float cSpeed, float cWidth, float cHeight) {
    catcherX=width/2;
    catcherY=height-100;
    catcherScore=0;

    catcherSpeed=cSpeed;
    catcherWidth=cWidth;
    catcherHeight=cHeight;
  }

  public void display() {
    fill(255, 0, 0);
    rect(catcherX, catcherY, catcherWidth, catcherHeight);
  }

  public void move() {
    if (catcherControl == 'x') { // x moves right
      catcherX = catcherX + catcherSpeed;
    } else if (catcherControl == 'z') { // z moves left
      catcherX = catcherX - catcherSpeed;
    }
  }
  public void checkCaught(Ball ball) {
    //if (ball.ballX > (catcherX - catcherWidth/2) &&
    if (ball.getX() > (catcherX - catcherWidth/2) &&
      //
      //ball.ballX < (catcherX + catcherWidth/2) &&
      ball.getX() < (catcherX + catcherWidth/2) &&
      //
      //ball.ballY + ball.ballWidth/2 >= catcherY - catcherHeight/2 &&
      ball.getY() + ball.getWidth()/2 >= catcherY - catcherHeight/2 &&
      //
      //ball.ballY - ball.ballWidth/2 <= catcherY + catcherHeight/2) {
      ball.getY() - ball.getWidth()/2 <= catcherY + catcherHeight/2) {
      increaseScore();
      ball.resetBall();
    }
  }
  public void increaseScore() {
    catcherScore ++;
  }

  public int getScore() {
    return catcherScore;
  }

  public void setCatcherControl(char k){
  catcherControl=k;}
}

import java.util.Random;

class Pellet {
  private int value;
  private int x;
  private int y;
  private Random randX;
  private Random randY;

  public Pellet() {
    this.value =1;
  }

  public void setPellet() {
    this.x=randX.nextInt((790-10)+1)+10;
    this.y=randY.nextInt((790-10)+1)+10;
  }

  public int getX() {
    return this.x;
  }

  public int getY() {
    return this.y;
  }

  public void setValue(int value) {
    this.value=value;
  }

  public int getValue() {
    return value;
  }
}

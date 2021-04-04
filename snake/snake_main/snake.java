import java.util.ArrayList;
import java.util.Random;
class snake {
  //length of the snake
  private int len;
  //array containing the positions of the snake
  private ArrayList <int[]> positions;
  //starting position x for the snake
  private Random randx=new Random();
  //starting position y for the snake
  private Random randy=new Random();
  //-----------MIGHT NOT NEED
  //starting array for the snake
  //private int[] first;

  public snake() {
    this.len=1;
    this.positions=new ArrayList<int[]>();
    this.positions.add(getStartPos());
    //show_coordinate();
  }

  private int[] getStartPos() {
    //[randx.nextInt((790-10)+1)+10,randy.nextInt((790-10)+1)+10]
    int[] first;
    first=new int[2];
    first[0]=randx.nextInt((790-10)+1)+10;
    first[1]=randy.nextInt((790-10)+1)+10;
    return first;
  }

  //private void show_coordinate() {
    //System.out.println(positions.get(0));
  }
}

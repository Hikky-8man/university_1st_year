class Button {
  private float w;
  private float h;
  private float x;
  private float y;
  private String word;

  public Button(float xPos, float yPos, float wPos, float hPos, String wordTemp) {
    x = xPos;
    y=yPos;
    w=wPos;
    h=hPos;
    word=wordTemp;
  }

  public void display(int[] colour,int[]colourA) {
    rectMode(CENTER);
    textAlign(CENTER);
    fill(colour[0],colour[1],colour[2]);
    rect(x, y, w, h);
    fill(colourA[0],colourA[1],colourA[2]);
    text(word, x, y);
  }

  public Boolean isInside(float xPos, float yPos) {
    if (xPos>=x-50 && xPos<=x+50) {
      if (yPos>=y-37 && yPos<=y+37) {
        return true;
      }
      else{
      return false;}
    } else {
      return false;
    }
  }
  
  public String getText(){
  return word;
}
}

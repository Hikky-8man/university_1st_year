class Style {
  
  //private int fillColour;
  private int[] fillColour;
  //private int strokeColour;
  private int[] strokeColour;
  //private int bgColour;
  private int[] bgColour;
  
  private int textSize;
  private String name;

  //public Style(int fc, int sc, int bgc, int ts, String n) {
  public Style(int[] fc, int[] sc, int[] bgc, int ts, String n){
  //public Style(color fc, color sc, color bgc, int ts, String n){
    fillColour=fc;
    strokeColour=sc;
    bgColour=bgc;
    textSize=ts;
    name=n;
  }

  public String getName() {
    return name;
  }

  public int[] getFillColour() {
    return fillColour;
  }

  public int[] getStrokeColour() {
    return strokeColour;
  }

  public int[] getBgColour() {
    //System.out.println (bgColour);
    //int[] array;
    int[] array={bgColour[0],bgColour[1],bgColour[2]};
    //System.out.println(array[0]);
    return array;
  }

  public int getTextSize() {
    return textSize;
  }
}

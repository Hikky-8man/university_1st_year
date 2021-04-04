String randomText = "MUDA!"; //<>//
String[] styleNames={"dark", "light", "red", "blue"};

int[] blackC= {0, 0, 0};
int[] whiteC = {255, 255, 255};
int[] redC={255, 0, 0};
int[] lRedC={100, 0, 0};
int[] blueC={0, 0, 255};
int[] lBlueC={0, 0, 200};

StyleCollection styles;
Style currentStyle;

Button[] buttons;

//----------------------------setup/draw-----------------------------------
void setup() {
  //text("MUDA!",400,300);

  size(800, 600);

  setupStyles();
}

//NOTE:
//  Need to modify the program so that it uses the inde
void draw() {
  //background(currentStyle.getBgColour()[0], currentStyle.getBgColour()[1], currentStyle.getBgColour()[2]);
  //print (currentStyle.getBgColour());
  int[] c = currentStyle.getBgColour();
  background(c[0], c[1], c[2]);
  //print (c);
  fill(currentStyle.getFillColour()[0], currentStyle.getFillColour()[1], currentStyle.getFillColour()[2]);
  textSize(currentStyle.getTextSize());
  setupButtons();

  for (int i=0; i<=3; i++) {
    ///
    buttons[i].display(styles.getStyle(styleNames[i]).getBgColour(), styles.getStyle(styleNames[i]).getFillColour());
  }
  int[] f = currentStyle.getFillColour();
  fill(f[0],f[1],f[2]);
  text("MUDA!",width/2,height/2);
}

void setupStyles() {
  styles=new StyleCollection();

  //(fillColour),(strokeColour),(backGroundColour),textSize,name
  Style dark;
  dark=new Style(whiteC, whiteC, blackC, 30, "dark");

  Style light;
  light = new Style(blackC, whiteC, whiteC, 30, "light");

  Style red;
  red = new Style(lRedC, redC, redC, 30, "red");

  Style blue;
  blue = new Style(lBlueC, blueC, blueC, 30, "blue");

  styles.addStyle(dark);
  styles.addStyle(light);
  styles.addStyle(red);
  styles.addStyle(blue);

  styles.setDefaultStyle(blue);

  currentStyle=styles.getDefaultStyle();
}

public void setupButtons() {
  buttons=new Button[4];
  float x=100;
  float y=550;
  float w=100;
  float h=50;
  for (int i=0; i<=3; i++) {
    //println(styleNames[i]);
    //println(i);
    buttons[i]=new Button(x, y, w, h, styleNames[i]);
    x+=200;
  }
}

public void mousePressed() {
  for (int i=0; i<=3; i++) {
    if (buttons[i].isInside(mouseX,mouseY)){
    currentStyle=styles.getStyle(styleNames[i]);
    }
  }
}

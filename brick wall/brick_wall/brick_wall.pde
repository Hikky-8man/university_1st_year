//NOTE:
//There is a bug where for some reason the last rectangle
//in a row is longer than the rest. I tried making the 
//width value for the rectangle static, but this error 
//is still present. Besides from this, I believe
//that the outcome has been achieved.
int rAmount;
int rAmountTemp;
int rX;
int rXTemp;
int rY;
boolean colourChange;
void setup(){
  rAmount=10;
  rAmountTemp=rAmount;
  rX=50;
  rXTemp=rX;
  rY=350;
  colourChange=false;
  size(900,400);
  
}
void draw(){
  background(155);
  rAmountTemp=rAmount;
  rX=50;
  rXTemp=rX;
  rY=350; //<>//
  for (int count=0;count<rAmount;count++){ //<>//
    for (int count2=0;count2<rAmountTemp;count2+=1){
      rect(rXTemp,rY,75,30); //<>//
      rXTemp+=50;
    }
    rAmountTemp-=1;
    rX+=25;
    rY-=30;
    rXTemp=rX;
  }
}

void mousePressed(){
  rAmount+=1;
  if (colourChange==false){
    fill(random(0,255),random(0,255),random(0,255));
    colourChange=true;
  }
  else if (colourChange==true){
    fill(255);
    colourChange=false;
  }
}

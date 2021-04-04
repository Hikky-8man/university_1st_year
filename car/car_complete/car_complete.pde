//Creates variables
int  wheelY;
//int colourValue;
boolean flag;
int maxValue;
int red;
int blue;
int green;
int rand;

//##this function triggers at the start of the program
void setup(){
  //sets the size of the screen to 1000x1000
  size(1000,1000);
  //colourValue=int(random(10,255));
  //maxValue = colourValue;
  red = int(random(100,255));
  //print ("Red:",red);
  blue = int(random(100,255));
  //print ("Blue:",blue);
  green = int(random(100,255));
  //print ("Green:",green);
  rand = int(random(1,4));
  //print ("Rand:",rand);
  
  if (rand==1){
    maxValue=red;}
  else if (rand==2){
   maxValue=blue;}
  else{
    maxValue=green;}
   
  flag=true;
}

void draw(){
  //##This if statement is meant to move the colour value down itas relative scale
  if (flag==true){
    //colourValue-=5;
    //if (colourValue==0){
    //flag=false;}
    
    //-------------------Red-----------------------------
    //##This statement decreases the red value of the car body
    if (rand==1){
      red-=5;
      //print ("Red dec:",red);
      
      //##This statement is to trigger the opposing if statement to mmove the colour value oif the body up its relative scale
      
     if (red<1){
     flag=false;
     //print (flag);
   }}
      
      //----------------------------Blue---------------------------
     else if (rand==2){
     blue-=5;
     //print ("Blue dec:",blue);
     if (blue<1){
     flag=false;
     //print (flag);
   }}
     
     //----------------------------Green----------------------------
     else{
     green-=5;
     //print ("Green dec:",green);
     if (green<1){
     flag=false;
     //print (flag);
   }}
    
  }
    
    //##This if statement is to increase the colour value
   if (flag==false){
   //colourValue+=5;
    //if (colourValue == maxValue){
    //flag=true;}
    // -------------------RED------------------
    //##Raises the red value of the colour
    if (rand==1){
    red+=5;
    //print ("Red inc:",red);
    //##Indicates that it is at its original value
    if (red==maxValue){
    flag=true;}}
    
    //-----------------Blue--------------------
    else if (rand==2){
    blue+=5;
    //print ("Blue inc:",blue);
    if(blue==maxValue){
    flag=true;}}
    //------------------Green-------------------
    else{
    green+=5;
    //print ("green inc:",green);
    if (green==maxValue){
    flag=true;}}
  }
  //##This sets the balue of the wheel (y axis) to the position of the mouse + 15 pixels
  wheelY=mouseY+15;
  
  //##Generates a white background
  background(255);
  
  //##sets the anchor point of the rectangle to the center
  rectMode(CENTER);
  
  //fill(255,colourValue,0);
  //##This is the line of code that gives te car's body a random colour
  fill(red,blue,green);
  //##Creating the body of the car
  rect(mouseX,mouseY,90,30);
  
  //fill (0,0,255);
  fill (0,0,255);
  //##The window(s)
  rect(mouseX,mouseY-30,30,30);
  
  //ellipse(mouseX+30,mouseY+15,30,30);
  //ellipse(mouseX-30,mouseY+15,30,30);
  fill (100);
  //## Note: I think i had done this to fulfill a condition in the portfolio, but 
  //   I do recognise that this is inefficient.
  //          |        |
  //          v        v
  ellipse(mouseX+30,wheelY,30,30);
  ellipse(mouseX-30,wheelY,30,30);  
}

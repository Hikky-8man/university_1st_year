boolean flag;
void setup() {
  size(800,800);
  flag = true;
  background(255);
}
void draw() {
  if (flag==true){  
    fill (255,0,0);
    rectMode(CENTER);
    textMode(CENTER);
    rect(400,400,300,300);
    fill (0,0,0);
    text("STOP!",300,400);
  } 
  
  else {
  fill(0,255,0);
  rectMode(CENTER);
  textMode(CENTER);
  rect(400,400,300,300);
  fill(0,0,0);
  text("WALK",300,400);
  
}
  textSize(80);
  //rectMode(CENTER);
  //rect(400,400,300,300);
  
  if (mousePressed==true){
  if (flag==true){
    flag=false;}
  else{
    flag=true;}}
  

}

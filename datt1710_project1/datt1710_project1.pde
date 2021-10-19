PImage bg, f2, f3, f4, f5, f6;
int marktime=0;
PImage tom, jerry;
boolean faceswitch = true;
boolean isRunning = false;
PVector position, target;
PFont f;
int x,y;
boolean jerryswitch= false;

void setup() {
  size(1000, 750, P2D);
  imageMode(CENTER);
  bg= loadImage("bg.png");
  f2= loadImage("tom1.png");
  f3= loadImage("tom2.png");
  f4= loadImage("jerry.png"); 
  f5= loadImage("tom3.png");
  f6= loadImage("tom4.png");
  f= createFont("Arial", 16, true);
  jerry=f4;
jerryswitch = false;
 position = new PVector(300,500);
  //imageMode(CENTER);*/
}

void draw() {
  background(bg);
  /*target= new PVector(mouseX, mouseY);
  imageMode(CENTER);
  position= position.lerp(target, 0.08);
  */
   image( jerry, position.x, position.y);
  
  
  if (faceswitch == true) {
     marktime = millis()%1000;
    if (marktime<600){
      tom= f2;
    }
    else if (marktime<1000) {
      tom= f3;
    }
  }
  

  
  
 line(mouseX, 0, mouseX, height);
  line(0, mouseY, width, mouseY);
 
  
  image(tom, 700, 500 );
    textFont(f,20);
    fill(0);
    text("Where's my cheese??", 600, 380);
 
  /*position.x = position.x+1;
  position.y = position.y+1;*/
 
   

 
 if (jerryswitch){
   jerry = f6;
 }
 else if (!jerryswitch){
   jerry = f4;
 }

}
 

 void mousePressed() {
   cursor(f5);
if(mouseX<position.x +100 && mouseX>position.x-100 && mouseY<position.y+100 && mouseY> position.y-100) {
     jerryswitch=!jerryswitch;
     
   }
 }

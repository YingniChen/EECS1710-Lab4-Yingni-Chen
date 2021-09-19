float x, y;
float speed;
void setup(){
  size(800, 600);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
}
void draw(){
  if (y>600) {
  y=0;
  }
  if (x>800) {
    x=0;
     }
     public static void main(String[] args) {
  heart(15,0.9,"love");
     }
  background(255, 182, 193);
  stroke(255, 20, 147);
  strokeWeight(20);
  fill (255, 240, 245);
  ellipse(x++, height/2, 10, 10);
  rect(width/2, y++, 50, 50);
   if (mousePressed) {
  ellipseMode(CENTER);
  line(mouseX, mouseY, pmouseX, pmouseY);
  ellipse(mouseX, mouseY, 20, 20);
}
}

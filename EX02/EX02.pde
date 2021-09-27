PImage star = createImage(851, 400, RGB);
float circleSize = 10;
float x;
float y;
float speed= 1;

void setup() {
  size(851, 400, P2D); // P2D enables 2D GPU acceleration
  star = loadImage("star.jpg");
  ellipseMode(CENTER);
  rectMode(CENTER);
}

void draw() {  
  background(star);
  image(star,851,400);
  stroke(255,255,255);
  strokeWeight(20);
  ellipse(x++, height/1.5, 10, 10);
  rect(x++,height/1.4 , 50, 10);
  if (x>851) {
  y=0;
  }
  if (x>851) {
    x=0;
     }
  if (mousePressed) {
    ellipseMode(CENTER);
    fill(255, 255, 255);
    
    line(mouseX, mouseY, pmouseX, pmouseY);
    ellipse(mouseX, mouseY, circleSize, circleSize);
  }
}

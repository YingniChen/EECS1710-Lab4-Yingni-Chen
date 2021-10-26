import gifAnimation.*;
Gif gif;

PImage ball, bowknot, watermelon;
PVector position;
int state=0;
int numObject= 10;
Object[] objects = new Object[ numObject];

float gravity= 0.01;
float gravityDelta = 0.01;
float friction = 1;
float floor;

void setup() {
  size(960, 640, P2D);
  gif = new Gif(this, "gamebg.gif");
  gif.loop();
  
  
  floor = height;
  for (int i=0; i<numObject; i++) {
    objects[i] = new Object(random(width), random(height));
  }
  
  ball= loadImage("ball.png");
  bowknot= loadImage("bowknot.png");
  watermelon= loadImage("watermelon.png");
}

void draw() {
  background(gif);
  
  for (int i=0; i< objects.length; i++) {
    objects[i].run();
  }
  
  gravity += gravityDelta;
  
  surface.setTitle("" + frameRate);
  
  
}

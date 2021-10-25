import gifAnimation.*;
Gif gif;

PVector position;
int state=0;
int numObject= 50;
Object[] objects = new Object[ numObject];

float gravity= 0.2;
float gravityDelta = 0.01;
float friction = 0.99;
float floor;



void setup() {
  size(540, 274, P2D);
  gif = new Gif(this, "gamebg.gif");
  gif.loop();
  
  
  floor = height;
  for (int i=0; i<numObject; i++) {
    objects[i] = new Object(random(width), random(height));
  }
}

void draw() {
  background(gif);
  
  
   for (int i=0; i< objects.length; i++) {
    objects[i].run();
  }
  
  gravity += gravityDelta;
  
  surface.setTitle("" + frameRate);
  
}

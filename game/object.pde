class Object {
  
  PVector position;
  PVector speed;
  int timestamp;
  
  Object(float x, float y) {
    position = new PVector(x, y);
    timestamp = millis();
    speed = new PVector(random(-1, 1), random(-1, 2));
  }
  
  void update() {
    position.add(speed);
    position.y += gravity;
    speed.mult(friction);
    position.y = constrain(position.y, 0, floor);
  }
  
  void draw() {
    ellipse(position.x, position.y, 10, 10);
  }
  
  void run() {
    update();
    draw();  
  }
  

}

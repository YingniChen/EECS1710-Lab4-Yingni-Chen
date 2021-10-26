 
 
 class Object {
  
  PVector position;
  PVector speed;
  int timestamp;
  int y;
  
  Object(float x, float y) {
   
    position = new PVector(x, y);
    timestamp = millis();
    
      
  }
  
  void update() {
    position.add(speed);
    position.y += gravity;
    speed.mult(friction);
    position.y = constrain(position.y, 0, floor);
   
  }
  
  void draw() {
     
   
      image(ball, position.x, y++);
    
      image(bowknot, position.x, y-200);
   
      image(watermelon, position.x, y-300);
   
     if(y>640) {
       y=0;
     }
    
      
    
    
    
  }
  
  void run() {
    update();
    draw();  
  }
  

}

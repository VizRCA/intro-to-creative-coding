// A class is a combination of properites (variables) and methods (functions) 
// The Circle class is a 'template' from which lots of circles can be created 
// each instance of the circle will have the same functions 
// but each can have its own x, y, gravity, size and speed attributes.

class Ball { 
  // set the properties (variables) of the ball class
  float xpos; 
  float ypos; 
  float gravity; 
  float wind; 
  float size;
  float speed; 

  // the constructor function is called when an instance is created
  // it is used to set the variable values of the instance.
  Ball (float x, float y, float g, float w, float s) {
    xpos = x; 
    ypos= y; 
    gravity = g; 
    wind = w; 
    size = s;
  }
  
  // Each class has a set of functions to define what the class does 

  // Functions to run the other functions in the class
  void update ( ) { 
    updateSpeedAndLocation();
  }
  
  void render()
  {
   drawShape(); 
  }

  // Functions to change data in the class instance
  
  // update the speed and location of the object. 
  void updateSpeedAndLocation ( ) { 
    // add gravity to speed
    speed = speed + gravity; 

    // update the y location of the object
    ypos = ypos + speed;

    // add wind force to x position
    xpos += wind;

    // add bounce. 
    if (ypos>height) { 
      speed = speed * -0.95;
    }
  }

  // Functions to communicate with other parts of the program architecture

  // draw the shape:
  void drawShape( ) { 
    ellipse(xpos, ypos, size, size);
  }
}

// The Circle class is a 'template' from which lots of circles can be created 
// each instance of the circle will have the same functions 
// but each can have its own x, y, gravity, size and speed attributes.

class Ball { 
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

  // a function to run the other functions in the class
  void update ( ) { 
    updateSpeedAndLocation();
  }
  
  void render()
  {
   drawShape(); 
  }


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



  // draw the shape:
  void drawShape( ) { 
    ellipse(xpos, ypos, size, size);
  }
}

// Bounce

// a simulation of a gravitional force on an object
// 'gravity' value is used to affect the speed of the object as it falls.

// 'bounce' is added by reversing the speed when the object reaches the foot of the display window
// a 'wind' value is added to affect the x movement of the object 

// set up variables:
float gravity = 0.8;   // a set 'gravity' value
float speed = 0;       // speed:  starts at 0 but increases with gravity
float ypos = 60;       // the starting y-location of the ball.  

// variables to allow the x location to move.
float wind = 1.6; 
float xpos = 110;

void setup( ) { 
  size (600, 600);
  background (255);
  fill (125, 100);
  stroke (0, 100);
} 

void draw( ) { 
  // use gravity to gradually increase the speed.
  speed = speed + gravity; 

  // update the y location of the object 
  ypos = ypos + speed; 
  
  // add 'wind' (move from left to right).
  xpos = xpos + wind;
  
  if (ypos>=height-30) {
   ypos =  height-30;
  }
  // draw the ball
  ellipse(xpos, ypos, 60, 60);


  // if ypos reaches the edge of the window
  // reverse the speed and dampen it a little
  if (ypos>=height-30) { 
    speed = speed * -0.95;
  }
}

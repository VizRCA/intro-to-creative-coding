/** Task: Gravity Bounce
 *  Use simulation of a gravitional force on an object
 *  'bounce' is added by reversing the speed when the object reaches the foot of the display window
 */
// set up variables:
float gravity = 0.8;   // a set 'gravity' value
float speed = 0;       // speed:  starts at 0 but increases with gravity
float ypos = 60;       // the starting y-location of the ball.  

void setup( ) { 
  size (600, 600);
  background (255);
  fill (125, 100); // set grayscale and alpha
  stroke (0, 100); // set grayscale and alpha
} 

void draw( ) { 
  // use gravity to gradually increase the speed.
  speed = speed + gravity; 

  // update the y location of the object 
  ypos = ypos + speed; 
  
  // Add a floor effect, factoring in ball size
  if (ypos>height-30)
    ypos = height-30;

  // draw the ball
  ellipse(300, ypos, 60, 60);


  // if ypos reaches the edge of the window
  // reverse the speed and dampen it a little
  if (ypos>=height-30) { 
    speed = speed * -0.95;
  }
  
  
}

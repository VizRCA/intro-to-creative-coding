/* Task
*  
*  Make a class from the following script
*  Bonus task - Update the example to use PVectors to store positions
*/

// sine wave example.

// a sine wave is a mathematical curve with a flowing motion

// set up the variables 
// starting location and size of the circle: 
float xpos = 0; 
float ypos = 200;
float w = 30;

// variables for the sine wave
float angle = 0; // starting value
float magnitude = 100; // maximum height of the wave
float angle_inc = 1.5; // amount to increase angle by

//
void setup ( ) { 
  size (600, 600); 
  smooth ( );
  background (255);
} 

void draw ( ) { 
  // use the sine formula to 'bounce' the vertical ypos (between -100 and 100)
  ypos =  sin (radians (angle))*magnitude ; 
  ypos += 300; // add 300 to the ypos (to position within the screen space).

  // increase xpos -  move the circle horizonally
  xpos = xpos + 2;
  angle += angle_inc; 
  
  // gradually increase circle size
   w += 0.3;

  // draw the circle.
  fill (125);
  ellipse (xpos, ypos, w, w);
 
} 

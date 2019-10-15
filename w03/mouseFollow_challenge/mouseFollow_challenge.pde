/** Task
 *  Convert this sketch to follow the mouse position.
 */
// create starting variables
float stiffness = 0.1; // a constant value

float damping = 0.9;// a constant value to dampen the force

float xpos,ypos;
float speedX,speedY;

void setup( ) {
  size (300, 300); 
  smooth( ); 
  background (125);
}


void draw( ) {
  background (125);
  // calculate spring force: using the calculation: 
  // spring force = stiffness * distance stretched;
  float distanceX = mouseX - xpos;
  float springForceX = stiffness * (distanceX);
  float distanceY = mouseY - ypos;
  float springForceY = stiffness * (distanceY);

  // add force to speed
  speedX = speedX + springForceX;
  speedY = speedY + springForceY;

  // apply damping
  speedX = speedX * damping;
  speedY = speedY * damping;

  // update the location of object.
  xpos = xpos + speedX; 
  ypos = ypos + speedY;

  ellipse (xpos, ypos, 20, 20);
}

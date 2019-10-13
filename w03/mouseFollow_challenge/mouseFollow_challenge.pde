/** Task
 *  Convert this sketch to follow the mouse position.
 */
// create starting variables
float stiffness = 0.1; // a constant value

float damping = 0.9;// a constant value to dampen the force
float targetX = 150; // location to 'spring' towards
float xpos;
float speed;

void setup( ) {
  size (300, 300); 
  smooth( ); 
  background (125);
}


void draw( ) {
  background (125);
  // calculate spring force: using the calculation: 
  // spring force = stiffness * distance stretched;
  float distance = targetX - xpos;
  float springForce = stiffness * (distance);

  // add force to speed
  speed = speed + springForce;

  // apply damping
  speed = speed * damping;

  // update the location of object.
  xpos = xpos + speed; 

  ellipse (xpos, 50, 20, 20);
}

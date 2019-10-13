// Springs and Elastics
// An example of a spring force being applied to an object.

// create starting variables
float stiffness = 0.15; // a constant value

float damping = 0.85;// a constant value to dampen the force
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
  float spring_force = stiffness * distance;

  // add force to speed
  speed = speed + spring_force;
  
  // apply damping
  speed = speed * damping;

  // update the location of object.
  xpos = xpos + speed; 

  ellipse (xpos, height/2, 30, 30);
}

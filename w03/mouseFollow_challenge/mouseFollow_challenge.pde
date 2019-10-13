/** Task
 *  Convert this sketch to follow the mouse position.
 */

float stiffness = 0.1; // a constant value

float damping = 0.9;// a constant value to dampen the force

float xpos, ypos;
float speedX, speedY;

void setup() {
  size (300, 300); 
  smooth(); 
  background (125);
}


void draw() {
  background (125);

  // calculate spring force: using the calculation: 
  // spring force = stiffness * distance stretched;
  float distance = mouseX - xpos;
  float springForce = stiffness * (distance);

  // add force to speed
  speedX = speedX + springForce;

  // apply damping
  speedX = speedX * damping;

  // update the location of object.
  xpos = xpos + speedX; 

  distance = mouseY - ypos;
  springForce = stiffness * (distance);
  // add force to speed
  speedY = speedY + springForce;

  // apply damping
  speedY = speedY * damping;

  // update the location of object.
  ypos = ypos + speedY;

  ellipse (xpos, ypos, 20, 20);
}

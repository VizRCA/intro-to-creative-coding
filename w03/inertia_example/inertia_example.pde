// Damping / Slowing down movement.

// set up the variables.
float xpos = 10;        // starting x location 
float targetX = 560;    // target x location to aim for
float damping = 0.05;    // amount of deceleration - the smaller the number the slower the object moves



void setup ( ) { 
  size (600, 600);
  background (255); 
  fill (125, 100); // grey fill with alpha value 
  stroke (0, 100);  // black outline with alpha value
}

void draw( ) { 
  // find the distance between the object and its target.
  
  float distanceFromTarget = targetX - xpos;
  
  // create a value which is a fraction of the total distance from target
  float moveAmount = distanceFromTarget * damping; 
  
  // move the xpos a fraction of the distance to its target. 
  xpos = xpos + moveAmount; 
  
  // draw the circle. 
  ellipse (xpos, 300, 60, 60);
  
  // as the circle nears its target the distance to target gets less and less 
  // the circle therefore moves slower and slower. 
  
}

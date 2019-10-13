
/** Task 
 *  Expand this sketch to have the ball move and bounce
 *  in both the X and Y directions!
 */

float ballDiameter = 30;
float positionX;
float velocityX;

void setup() {
  size(800, 600);
  background(128);

  positionX = 0;
  velocityX = 3;
}

void draw() {
  background(128);
  fill(0);      // fill changes the color of the interior of the shape
  noStroke();   // noStroke removes the outer line

  ellipse(positionX, height/2, ballDiameter, ballDiameter);
  positionX += velocityX;
  

  // && means "and"
  if ((velocityX > 0 && positionX > width - ballDiameter/2) || (velocityX < 0 && positionX < ballDiameter/2))
    velocityX = -velocityX;
 
}


/** Task 
 *  Expand this sketch to have the ball move and bounce
 *  in both the X and Y directions!
 */

float ballDiameter = 30;
float positionX, positionY;
float velocityX, velocityY;

void setup() {
  size(800, 600);
  background(128);

  positionX = positionY = 0;
  velocityX = velocityY = 3;
}

void draw() {
  background(128);
  fill(0);      // fill changes the color of the interior of the shape
  noStroke();   // noStroke removes the outer line

  ellipse(positionX, positionY, ballDiameter, ballDiameter);
  positionX += velocityX;
  positionY += velocityY;

  // && means "and"
  if ((velocityX > 0 && positionX > width - ballDiameter/2) || (velocityX < 0 && positionX < ballDiameter/2))
    velocityX = -velocityX;

  if ((velocityY > 0 && positionY > height - ballDiameter/2) || (velocityY < 0 && positionY < ballDiameter/2))
    velocityY = -velocityY;
}

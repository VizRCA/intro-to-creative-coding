/** Task
 *  The shape will not move. What do you need to do to fix it?
 */
float position;

void setup() {
  size(800, 600);
  background(128);
  position = 0;
}

void draw() {
  background(128);
  fill(0);      // fill changes the color of the interior of the shape
  noStroke();   // noStroke removes the outer line

  // Does position represent the horizontal or the vertical location?
  ellipse(position, 300, 30, 30);
  position += 0.5;

  // Notice we can use + to concatenate strings.  This is Java syntax
  println("position = " + position);
}

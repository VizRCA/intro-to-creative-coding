/** Task
 * Fix this example so that the explosion happens.
 */
int totalSize = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(100);

  // Draw a nifty explosion that gets bigger over time
  goBoom();
}

void goBoom() {
  ellipseMode(CENTER);

  // BUG! Why won't this work as planned?

  float yellowValue = map(totalSize, 0, 100, 0, 255);
  float diameter = map(totalSize, 0, 100, 0, 300);

  fill(255, yellowValue, 0);
  ellipse(width / 2, height / 2, diameter, diameter);
  
  totalSize++;
  if(totalSize > 100) totalSize = 0;
  // OR int totalSize = frameCount%100;
}

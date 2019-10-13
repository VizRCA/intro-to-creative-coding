/** Task
 * Fix this example so that the explosion happens.
 */
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
  for (int totalSize = 0; totalSize < 100; totalSize++) {
    float yellowValue = map(totalSize, 0, 100, 0, 255);
    float diameter = map(totalSize, 0, 100, 0, 300);

    fill(255, yellowValue, 0);
    ellipse(width / 2, height / 2, diameter, diameter);
  }
}

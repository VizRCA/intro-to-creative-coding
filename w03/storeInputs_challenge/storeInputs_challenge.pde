/**
 * Task - Storing Input 
 * 
 * Finish the script so moving the mouse across the screen creates a trail of circles. 
 * To do this, the positions of the mouse are recorded
 * into an array and played back every frame. Between each
 * frame, the newest value are added to the end of each array
 * and the oldest value is deleted. 
 */
 
int num = 60;
// arrays to store previous mouse positions
float mx[] = new float[num];
float my[] = new float[num];

void setup() {
  size(640, 360);
  noStroke();
  fill(255, 153); 
}

void draw() {
  background(51); 
  
  // Tip: Cycle through the array, using a different entry on each frame. 
  // Using a modulo (%) is faster than moving all the values over.
  int newPosIndex = frameCount % num;
  
  // TODO record the mouse position x and y
  
  // TODO write a for loop to draw all the cicles,
  // the older cicles are smaller than the newest
}

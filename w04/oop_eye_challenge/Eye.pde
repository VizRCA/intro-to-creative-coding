// Eye
//
// This class implements an eye that follows a given point
// Adapted from a design by Rod Selfridge

class Eye {
  // These are instance variables: each Eye object will
  // have its own copy of them.
  float locationX, locationY;
  float pupilLocationX, pupilLocationY;
  float pupilDiameter, eyeDiameter;
  
  // Default constructor
  Eye() {
    this(100, 100, 80);
  }
  
  // Constructor with three arguments
  Eye(float x, float y, float diameter) {
     // TODO #1: Implement this constructor
    locationX = x;
    locationY = y;
    pupilDiameter = 20;
    eyeDiameter = diameter;
    lookAt(locationX, locationY);   
  }
  
  // Constructor with full arguments
  Eye(float x, float y, float eyeDiameter, float pupilDiameter, color eyeColor) {
    // TODO #4: Implement this constructor so array of eyes can be more interesting.
  }
  
  // Move the eye to a particular location
  void setLocation(float x, float y) {
    locationX = x;
    locationY = y;
    lookAt(locationX, locationY);  
  }
  
  // Move the pupil to look at the given point
  void lookAt(float x, float y) {
    // TODO #2: put your cyclops lookAt() code in here!
    pupilLocationX = locationX + 0;
    pupilLocationY = locationY + 0;
  }
  
  // Draw the eye
  void drawEye() {
    ellipseMode(CENTER);
    
    // Draw the outside of the eye
    stroke(0);
    strokeWeight(1);
    fill(255);
    ellipse(locationX, locationY, eyeDiameter, eyeDiameter);
    
    // Draw the pupil with the given colour
    // TODO #3: replace this stroke with a new variable called eyeColor that
    // can be set in the constructor
    stroke(0, 190, 190);
    strokeWeight(4);
    fill(0);
    ellipse(pupilLocationX, pupilLocationY, pupilDiameter, pupilDiameter); 
  }
  
  
}

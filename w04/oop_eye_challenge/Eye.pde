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
  color eyeColor;

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
  Eye(float x, float y, float eyeDiameterIn, float pupilDiameterIn, color eyeColorIn) {
    // TODO #4: Implement this constructor so array of eyes can be more interesting.
    locationX = x;
    locationY = y;
    pupilDiameter = pupilDiameterIn;
    eyeDiameter = eyeDiameterIn;
    eyeColor = eyeColorIn;
    lookAt(locationX, locationY);
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

    float maxPupilRadius = (eyeDiameter / 2) - (pupilDiameter / 2 + 2);
    float eyePointDistance = dist(x, y, locationX, locationY);
    if (eyePointDistance < maxPupilRadius) {
      pupilLocationX = x;
      pupilLocationY = y;
    } else {
      pupilLocationX = locationX + (x - locationX)*(maxPupilRadius/eyePointDistance);
      pupilLocationY = locationY + (y - locationY)*(maxPupilRadius/eyePointDistance);
    }
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
    stroke(eyeColor);
    strokeWeight(4);
    fill(0);
    ellipse(pupilLocationX, pupilLocationY, pupilDiameter, pupilDiameter);
  }
}

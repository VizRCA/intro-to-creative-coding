// A big eye that follows the mouse

float locationX, locationY;
float pupilLocationX, pupilLocationY;
float pupilDiameter, eyeDiameter;

void setup() {
  size(400, 400);
  pupilLocationX = locationX = width / 2;
  pupilLocationY = locationY = height / 2;
  pupilDiameter = 30;
  eyeDiameter = 100;
}

void draw() {
  background(220);
  
  lookAt(mouseX, mouseY);
  drawEye();
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
  stroke(0, 190, 190);
  strokeWeight(4);
  fill(0);
  ellipse(pupilLocationX, pupilLocationY, pupilDiameter, pupilDiameter);   
}

// Tell the eye where to look
void lookAt(float x, float y) {
  // This is how the pupil can go and still be inside the eye:
  float maxPupilRadius = (eyeDiameter / 2) - (pupilDiameter / 2 + 2);
  
  // TODO #1: how far is the point from the centre of the eye?
  float eyePointDistance = 0;

  if(eyePointDistance < maxPupilRadius) {
    // TODO #2: where does the pupil go if the point is inside the eye?
  }
  else {
    // TODO #3: replace the "+ 0" with the right quantity to move the pupil in the
    // direction of the point 
    pupilLocationX = locationX + 0;
    pupilLocationY = locationY + 0;
  }    
}

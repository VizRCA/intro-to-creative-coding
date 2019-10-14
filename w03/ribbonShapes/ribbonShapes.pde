// Adapted from https://www.openprocessing.org/sketch/432618/

// Good example of mapping user input with structured visual effect
// this could easily be modified to respond to other data inputs....

// These variables could all be done in local scope 
// but this allows draw() and drawRibbon() function to access them
float curveWidth = 10.0;
float curveThickness = 10.0;
float angleOffset = 0.9;
float angleIncrement, angleA, angleB;

// Just a play variable
float angleMax = 0.2;

void setup() 
{
  size(800, 800);
}

void draw() {
  background(255);

  angleIncrement = map(mouseY, 0, height, 0.0, angleMax);
  angleA = 0.0;
  angleB = angleA + angleOffset;

  float k = map(mouseX, 0, width, 2.0, 4.0);

  for (int i = 0; i < height; i += curveWidth*k) 
  {
    float waveColor = map(i, 0, mouseY+10, 0, 255); // gradient based on position from centre
    noStroke();

    pushMatrix();
    translate(0, 400);
    fill(waveColor);
    drawRibbon(i);

    pushMatrix();
    scale(1.0, -1.0); // flip the y position, sneaky
    drawRibbon(i);
    popMatrix();
    popMatrix();
  }
}

// This function aggregates a drawing behaviour that can be used multiple times
void drawRibbon(int i)
{
  beginShape(QUAD_STRIP);
  for (int x = 0; x <= width; x += 10) {
    //float y1 = i + (sin(angleA)* curveWidth);
    //float y2 = i + (sin(angleB)* curveWidth);
    float y1 = i + (sin(angleB) * curveWidth);
    float y2 = i + (cos(angleA) * curveWidth);
    vertex(x, y1);
    vertex(x, y2 + curveThickness);
    angleA += angleIncrement;
    angleB = angleA + angleOffset;
  }
  endShape();
}

void keyPressed()
{
  if (keyCode == UP)
  {
    angleMax*=1.1;
  }
  if (keyCode == DOWN)
  {
    angleMax*=0.9;
  }
}

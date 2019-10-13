
float position;
float velocity;

void setup() {
  size(800, 600);
  background(128);
  
  // Set the initial location and speed
  position = 0;
  velocity = 2; // pixels per frame
}

void draw() {
  background(128);
  fill(0);      // fill changes the color of the interior of the shape
  noStroke();   // noStroke removes the outer line

  // Does position represent the horizontal or the vertical location?
  ellipse(position, 300, 30, 30);
  position += velocity;
  
  // The pixels we can see range from 0-799 in the X axis
  // This code basically works to make the shape bounce back and forth.
  // But there is a bug if positionX ends up far off the edge
  // of the screen (why?)
  if(position >= 800)
    velocity = -velocity;
  if(position < 0)
    velocity = -velocity;
}

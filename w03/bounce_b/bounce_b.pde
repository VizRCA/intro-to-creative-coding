
float position;
float velocity;

void setup() {
  size(800, 600);
  background(128);
  
  // Set the initial location and speed
  position = 0;
  velocity = 2;
  
  // Note that the actual speed we see will change
  // with the frame rate. This may not be what you want.
  // Try big values too.  Default is 60
  frameRate(30);
}

void draw() {
  background(128);
  fill(0);      // fill changes the color of the interior of the shape
  noStroke();   // noStroke removes the outer line

  // Does position represent the horizontal or the vertical location?
  ellipse(position, 300, 30, 30);
  position += velocity;
  
  // By checking both position and velocity, we handle bouncing
  // at the edge of the screen cleanly, no matter where it starts
  // && means "and"
  if(velocity > 0 && position >= 800)
    velocity = -velocity;
  if(velocity < 0 && position < 0) {
    // Curly brackets let us put multiple statements after the if()
    // They're optional if there's only one statement afterwards
    velocity = -velocity;
  }
}

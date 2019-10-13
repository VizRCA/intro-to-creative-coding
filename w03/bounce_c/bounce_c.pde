
float position;
float velocity;

void setup() {
  size(800, 600);
  background(128);
  position = 0;
  velocity = 2;
  
  // Try big values too.  Default is 60
  // Check your output log (the bottom of the sketch window)
  // to see what the actual frame rate is. It may be quite
  // different if you call frameRate() with a big number that the
  // computer can't manage.
  frameRate(30);
}

void draw() {
  background(128);
  fill(0);      // fill changes the color of the interior of the shape
  noStroke();   // noStroke removes the outer line

  // Does position represent the horizontal or the vertical location?
  ellipse(position, 300, 30, 30);
  position += velocity;
  
  // && means "and"
  if(velocity > 0 && position > 800)
    velocity = -velocity;
  if(velocity < 0 && position < 0) {
    // Curly brackets let us put multiple statements after the if()
    // They're optional if there's only one statement afterwards
    velocity = -velocity;
  }
  
  println("On frame " + frameCount + " the rate is " + frameRate);
}

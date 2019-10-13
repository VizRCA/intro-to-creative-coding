// Notice that it doesn't leave copies of itself behind as it goes

int position;

void setup() {
  size(800, 600);
  background(128);
  position = 0;
}

void draw() {
  background(128); // need to redraw the background to remove trail
  fill(0);      // fill changes the color of the interior of the shape
  noStroke();   // noStroke removes the outer line

  // Does position represent the horizontal or the vertical location?
  ellipse(position, 300, 30, 30);
  
  
  
  position += 2;
}

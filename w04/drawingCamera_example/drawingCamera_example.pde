/// Input Video: Pixel Mirror

// use Processing's video library to capture video from a connected camera 
// needs a camera to be connected 
// if the library is missing use Sketch>Import Library>Add Library

// A live video image is captured
// the pixel information is found and used to re-draw the video feed as a 'pixel mirror'

import processing.video.*;

Capture camera;

float spacing = 5;
float size = 4;

void setup() {
  size(800, 600);

  // start to capture camera source
  camera = new Capture(this, 160, 120);
  camera.start();
  noStroke( );
}

void draw() {
  background (255);
  if (camera.available()) {
    camera.read();
  }
  
  // get all the pixels from the camera sourrce 
  // cycle through each pixel a row at a time
  for (int y=0; y<camera.height; y++) { 
    for (int x=0; x<camera.width; x++) {
      
      // get the color of the current pixel 
      // use as the current fill color
      color c = camera.get(x, y); 
      fill (c); 

      // draw a circle using the pixel color 
      // use size to re-draw the pixel at a larger size
      ellipse (x*spacing, y*spacing, size, size);
    }
  }
}

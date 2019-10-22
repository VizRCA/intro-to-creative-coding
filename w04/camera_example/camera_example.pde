/// Input Video

// use Processing's video library to capture video from a connected camera 
// needs a camera to be connected 
// if the library is missing use Sketch>Import Library>Add Library 

import processing.video.*;

Capture camera;


void setup() {
   size(400, 300);
   // start to capture camera source
   camera = new Capture(this, 320, 240);
   camera.start();
}
void draw() {
   if (camera.available()) {
      camera.read();
   }
   // display image from camera on screen
   image(camera, 0, 0);
}

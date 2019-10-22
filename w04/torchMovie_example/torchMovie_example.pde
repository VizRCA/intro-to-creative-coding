/**
 * Changing each frame based on input
 * 
 */

import processing.video.*;

Movie mov;

void setup() {
  size(640, 360);
  background(0);
  // Load and set the video to play. Setting the video 
  // in play mode is needed so at least one frame is read
  // and we can get duration, size and other information from
  // the video stream. 
  mov = new Movie(this, "transit.mov");  

  // Pausing the video at the first frame. 
  mov.loop();
  mov.play();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  background(0);
  image(mov, 0, 0, width, height);

  loadPixels();
  mov.loadPixels();
  for (int x = 0; x < mov.width; x++) {
    for (int y = 0; y < mov.height; y++) {
      int loc = x + y*mov.width;
      float r, g, b;
      r = red(mov.pixels[loc]);
      g = green(mov.pixels[loc]);
      b = blue(mov.pixels[loc]);

      float maxDist = 100; // dist(0,0,width,height);
      float d = dist(x, y, mouseX, mouseY);
      float adjBright = (maxDist - d)/maxDist;
      
      r *= adjBright;
      g *= adjBright;
      b *= adjBright;
      
      r = constrain(r,0,255);
      g = constrain(g,0,255);
      b = constrain(b,0,255);
      
      color c = color(r,g,b);
      pixels[loc] = c;
    }
  }
  updatePixels();
}

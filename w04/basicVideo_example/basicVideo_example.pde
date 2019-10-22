// Import video library
import processing.video.*;

Movie mov;

void setup() {
  size(1280, 720);
  background(0);
  // Load and play the video in a loop
  mov = new Movie(this, "tasktest.mp4");
  mov.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw()
{
 //if (movie.available() == true) {
  //  movie.read(); 
  //}
  image(mov, 0, 0, width, height);
}

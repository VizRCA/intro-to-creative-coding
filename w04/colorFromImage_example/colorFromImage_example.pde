// Color as Data:
// Getting a color values from an image. 

// create a new PImage.
PImage img; 

void setup( ) {
  size (600, 600);

  // load the image (from the sketch's 'data' folder)
  img = loadImage ("durham.jpg"); 
}

void draw ( ) { 
  background (255);
  // display the image on screen
  image (img, 0, 0);
  
  // use get (x,y) to find the color value of a specific pixel 
  color c1 = img.get (360, 120);  // find color of a pixel in the image
  fill (c1);  // set as fill color 
  rect (50, 350, 100, 100); 

  // OR get color values from the mouse position
  color c2 = img.get(mouseX, mouseY); // save pixel color
  fill (c2);  // use as fill
  rect (300, 350, 100, 100);
  ////////////////////////////////
}

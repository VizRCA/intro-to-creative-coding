// Extract Color Data 

// In this example the brighness is extracted from the color information is found for each pixel 
// and mapped to the size of each colored circle. 
// The darkest areas are drawn as the largest. 

PImage img;

float spacing = 6; // space between squares

void setup ( ) { 
  size (600, 600);
  background (255);
  noStroke(); 

  //load image
  img = loadImage ("durhamSquareSMALL.jpg"); //

  // cycle through ALL pixels in the image
  // the 'nested' for loop cycles through the image a row at a time.
  for (int y=0; y<img.height; y++) { 
    for (int x=0; x<img.width; x++) {

      // get the color of current pixel 
      color c = img.get(x, y); 
      
      // get the brightness value of the color (between 0 and 255)
      float brightValue = brightness(c); 
      // use map() to convert the brightness value to a number between 0.1 and 10.
      // where high brightness produces the lowest numbers.
      // this number will be used to set the size of each circle.
      float size = map (brightValue, 0, 255, 10, 0.1); // convert 0-255 to 10-0.1

      // use color of the pixel as the fill color 
      fill (c); 
      
      // draw a circle - using the size value as defined by the brightness of the color.
      ellipse (x*spacing, y*spacing, size, size);
    }
  }
  saveFrame("output.png");
}

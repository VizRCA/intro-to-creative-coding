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

  // TODO 1: cycle through ALL pixels in the image
  // use a 'nested' for loop cycles through the image a row at a time.
  for (int y=0; y<img.height; y++) { 
    for (int x=0; x<img.width; x++) {

      // TODO 2: get the color of current pixel, replace below with a pixel from the image
      color c = img.get(x,y); // <- replpace the color(0)
      
      // get the brightness value of the color (between 0 and 255)
      float brightValue = brightness(c); 
      
      // TODO 3: 
      // use map() to convert the brightness value to a number between 0.1 and 10, convert 0-255 to 10-0.1
      // where high brightness produces the lowest numbers.
      // this number will be used to set the size of each circle.
      // if you don't know map() check the reference.
      float size = map(brightValue, 0, 255, 10, 0.1);  // <- replpace the 0

      // use color of the pixel as the fill color 
      fill (c); 
      
      // TODO 4:
      // draw a circle - using the size value as defined by the brightness of the color,
      // and set the position using the pixel coordinate and the spacing variable.
      ellipse(x * spacing, y * spacing, size, size);
    }
  }
  
}

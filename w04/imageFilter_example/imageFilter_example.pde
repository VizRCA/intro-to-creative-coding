// Using Preset Image Filters

PImage img;                        // define PImage object
int filter = 1;

void setup() {
  img = loadImage("goatlife.jpg");   // load an image
  size(1200, 800);                    // size the window to size of file (I checked it)
  image(img, 0, 0);                    // display image with 0,0 offset
  frameRate(1);
  textSize (50);
  fill(0);
}

void draw() {
  image(img, 0, 0);
  // Notice filter comes after image ;)
  switch(filter)
  {
  case 1:
    // THRESHOLD - Convert image to b&w, given a threshold between 0.0-1.0
    filter(THRESHOLD, .6);
    text("THRESHOLD", 15, 75);
    break;
  case 2: 
    // GRAY - Convert any color to grayscale
    filter(GRAY);
    text("GRAY", 15, 75);
    break;
  case 3: 
    // INVERT - Guess
    filter(INVERT);
    text("INVERT", 15, 75);
    break;
  case 4: 
    // POSTERIZE - Limits  each channels to number of colors specified in parameter
    filter(POSTERIZE, 8);
    text("POSTERIZE = 8", 15, 75);
    break;
    case 5: 
    // POSTERIZE - Limits  each channels to number of colors specified in parameter
    filter(POSTERIZE, 2);
    text("POSTERIZE = 2", 15, 75);
    break;
  case 6: 
    // BLUR - Blurs with radius of parameter
    filter(BLUR, 2);
    text("BLUR = 2", 15, 75);
    break;
  case 7: 
    // BLUR - Blurs with radius of parameter
    filter(BLUR, 6);
    text("BLUR = 2", 15, 75);
    break;
  }
  filter++;
  if(filter == 8) filter = 1;
}

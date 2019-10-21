// Load it all up!
PImage img = loadImage("theta.jpg");
size(960, 540);
image(img, 0, 0);


// Shift pixels
for (int x = 2; x < img.width-2; x++)   // all x pixels
  for (int y = 2; y <img.height-2; y++) {  // all y pixels
    color c = get(x, y);
    // cheeck values are between 0-255
    int xx = x + int(random(-3,3));
    int yy = y + int(random(-3,3));
    set(xx,yy,c); // color another pixel
    fill(c);
    noStroke();
    rect(xx-5, yy-5,4,4);
  }
  
/*
// Differential points effect
filter(GRAY);

// Define colors
color white = color(255, 255, 255);
color black = color(0, 0, 0);

// Extract edges
for (int y = 0; y < img.height-1; y++)   // all y pixels
  for (int x =0; x <img.width-1; x++) {  // all x pixels
    color thisPixel = get(x, y);          // get a pixels color 
    color nextPixel = get(x+1, y);        // get adjacent pixels color

    int ra = int(red(thisPixel));        // extract red value
    int rb = int(red(nextPixel));        // same as above but on next

    if (abs(ra-rb) > 6)                   // are they different?
      set(x, y, black);
    else
      set(x, y, white);
  }
*/ 

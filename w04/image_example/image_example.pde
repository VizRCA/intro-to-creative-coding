// Displaying Images

PImage img;                        // define PImage object
img = loadImage("goatlife.jpg");   // load an image
size(1200,800);                    // size the window to size of file (I checked it)
image(img,0,0);                    // display image with 0,0 offset

PImage img;

void setup() {
  size(650, 450);
  img = loadImage("art_0173.jpg");
}

void draw() {
  // TODO 1 make tile size proportional to mouse position
  // A - calculate how many tiles you have in each direction
  float tileCountX = 0;
  float tileCountY = 0;
  // B - Calculate size of time relative to width and height
  float stepX = 0;
  float stepY = 0;

  // TODO 2 make nested for loop to place a resized image tile across whole screen
  // for loop for Y
    // for loop for X
      image(img, 0, 0, stepX, stepY);
}

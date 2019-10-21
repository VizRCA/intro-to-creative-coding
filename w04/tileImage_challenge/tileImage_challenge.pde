PImage img;

void setup(){
  size(650, 450);
  img = loadImage("art_0173.jpg");
}

void draw(){
  // TODO 1 make tile size proportional to mouse position
  // A - calculate how many tiles you have in each direction
  float tileCountX = mouseX/3+1;
  float tileCountY = mouseY/3+1;
  // B - Calculate size of time relative to width and height
  float stepX = width/tileCountX;
  float stepY = height/tileCountY;
  
  // TODO 2 make nested for loop to place a resized image tile across whole screen
  for (float y = 0; y < height; y += stepY){
    for (float x = 0; x < width; x += stepX){
      image(img, x, y, stepX, stepY);
    }
  }
}

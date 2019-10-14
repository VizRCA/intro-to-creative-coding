// What OOP allows is simplified creation of many objects easily.
// In this example an array of balls is made


// create two instances of the Circle class.
Ball[] bs;


int numBalls = 10;

void setup( ) { 
  size (600, 600);
  background (255);
  noStroke();
  
  bs = new Ball[numBalls];
  for (int i = 0; i < numBalls; i++)
  {
    // create n new instances of the circle: 
    // each with their own x, y, gravity, wind and size attributes
    // the returns are just to make it tidy
    bs[i] = new Ball (
      random(width), // x pos 
      random(0, 20), // y pos
      random(0.5, 0.95), // gravity
      random(-2.2, 2.2), // wind
      random(20, 80) // size
      ); // a ball
  }
} 

void draw( ) { 
  background (255);

  fill (0, 80); 
  // call the update() and render() function for each ball:
  for (int i = 0; i < numBalls; i++)
  {
    bs[i].update();
    bs[i].render();
  }
}

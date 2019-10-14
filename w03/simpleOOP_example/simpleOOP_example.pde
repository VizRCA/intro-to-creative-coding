// Classes are templates of objects that can be created
// In this example a simple ball is made and multiple versions are "instantiated"


// create two instances of the Circle class.
Ball c1;
Ball c2;

void setup( ) { 
  size (600, 600);
  background (255);

  // create 2 new instances of the circle: 
  // each with their own x, y, gravity, wind and size attributes
  c1 = new Ball (random(width), 10, 0.5, 2.2, 20); // small ball 
  c2 = new Ball (random(width), 13, 0.95, 0.6, 80); // large ball
} 

void draw( ) { 
  background (255);

  fill (0, 80); 
  // call the update() and render() function for each circle:
  c1.update();
  c2.update();
  
  c1.render();
  c2.render();
}

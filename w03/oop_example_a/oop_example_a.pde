///////////////////////////////
// TRIANGLE EXAMPLE AS CLASS //
///////////////////////////////
// Declare variables, shorthand way
Point2d a, b, c;
Triangle tri;

void setup()
{
  size(100, 100);
  // Set the drawing settings
  stroke(255);
  strokeWeight(2);

  // Set points data by instantiating new objects of the Point2d class
  a = new Point2d (width/2, 5);
  b = new Point2d (width-5, height-5);
  c = new Point2d (5, height-5);
  // Instantiate new object of the triangle class
  tri = new Triangle (a, b, c);
}

void draw()
{
  background(0);
  tri.render();
}

class Point2d
{
  int x, y;
  Point2d(int x, int y)
  {
    this.x = x;
    this.y = y;
  }
}


class Triangle
{
  Point2d a, b, c;

  Triangle(Point2d a, Point2d b, Point2d c)
  {
    this.a = a;
    this.b = b;
    this.c = c;
  }

  void render()
  {
    line(a.x, a.y, b.x, b.y);
    line(b.x, b.y, c.x, c.y);
    line(c.x, c.y, a.x, a.y);
  }
}

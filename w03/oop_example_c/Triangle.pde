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

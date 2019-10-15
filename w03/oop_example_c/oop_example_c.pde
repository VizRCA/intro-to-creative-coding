////////////////////////
// MOVE THE TRIANGLES //
////////////////////////

// Declare variables, shorthand way
Point2d[] points;
Triangle[] triangles;

int numOfRows = 5;
int numOfCols = 5;
int numOfTris;

void setup()
{
  size(350, 350);
  // Set the drawing settings
  stroke(255);
  strokeWeight(1);

  int widthX = width/numOfCols;
  int widthY = height/numOfRows;
  int widthXhalf = widthX/2;

  numOfTris = numOfRows * numOfCols;
  points = new Point2d[numOfTris * 3];
  triangles = new Triangle[numOfTris];

  // You can make for loops quite detailed by using multiple counters
  for (int i = 0, j = 0, y = 0; y < numOfCols*widthY; y += widthY) {
    for (int x = widthXhalf; x < numOfRows*widthX; x += widthX, i++, j+=3) {

      // Set points data by instantiating new objects of the Point2d class
      points[j] = new Point2d (x-widthXhalf, y);
      points[j + 1] = new Point2d (x+widthXhalf, y);
      points[j + 2] = new Point2d (x, y+widthY);
      // Instantiate new object of the triangle class
      triangles[i] = new Triangle (points[j], points[j + 1], points[j + 2]);
    }
  }
}

void draw()
{
  background(0);

  int index = (int)random(0, points.length);
  if (random(0, 100) > 50)
  {
    points[index].x++;// = (int)random(0, width);
    points[index].y++;// = (int)random(0, height);
  }
  else
  {
    points[index].x--;// = (int)random(0, width);
    points[index].y--;// = (int)random(0, height);
  }
  if (points[index].x > width) points[index].x = width;
  else if (points[index].x < 0) points[index].x = 0;

  if (points[index].y > height) points[index].y = height;
  else if (points[index].y < 0) points[index].y = 0;

  for (int i = 0; i < numOfTris; i++)
  {
    triangles[i].render();
  }
}

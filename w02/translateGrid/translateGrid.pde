// Tasks
// 1. Fill in lineSegment function
// 2. Make the first line group appear on bottom left
// 3. Draw series across the middle
// 4. Translate, rotate, and draw the final line group

int lineCount = 5;
int lineWidth = 5;
int lineLength = 50;

void setup()
{
  size(255, 255);
  noFill();
  strokeCap(PROJECT);
  strokeWeight(lineWidth);
}

// 1: Use a function to draw groups of lines
void lineSegment()
{
  // 1A: A for loop that uses lineCount for end condition
    // 1B: Inside for loop, draw a line( x1,y1,x2,y2)
    // Tip: spacing is --> i * ( lineWidth * 2 )
}

void draw() 
{
  background(255);
  
  // 2. Translate to bottom left, draw line segment
  // Tip: y translation is --> height-lineCount*(lineWidth*2)
  
  // 3A: Use push pop matrix, tranlate down by lineWidth and across by width/3
  // 3B: draw 5 line groups, moving down and to the right
  // Tip: use a for loop with a translate inside it to draw groups.
  
  // 4A: Translate and rotate 60 degrees
  // 4B: Draw line segment
  // Tip: the rotate function work in radians, with use fraction of PI or radians(value)
}

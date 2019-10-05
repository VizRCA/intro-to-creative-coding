int lineCount = 5;
int lineWidth = 5;
int lineLength = 50;

// Tasks
// 1. Fill in lineSegment function
// 2. Make the first line group appear on bottom left
// 3. Draw series across the middle
// 4. Translate, rotate, and draw the final line group

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
    
  for (int i = 0; i < lineCount; i++)
  {
    // 1B: Inside for loop, draw a line( x1,y1,x2,y2)
    // Tip: spacing is --> i * ( lineWidth * 2 )
    int yPos = i * ( lineWidth * 2 );
    line(0, yPos, lineLength, yPos );
  }
}

void draw() 
{
  background(255);
  
  // 2. Translate to bottom left, draw line segment
  // Tip: y translation is --> height-lineCount*(lineWidth*2)
  pushMatrix();
  translate(0, height-lineCount*(lineWidth*2) );
  lineSegment();
  popMatrix();
  
  // 3A: Use push pop matrix, tranlate down by lineWidth and across by width/3
  // 3B: draw 5 line groups, moving down and to the right
  // Tip: use a for loop with a translate inside it to draw groups.
  pushMatrix();
  translate(width/3, lineWidth);

  for (int i = 0; i < 5; i++)
  {
    lineSegment();
    // translates with a push matrix are additive!
    translate(lineWidth*2, lineWidth*2);
  }
  popMatrix();
  
  // 4A: Translate and rotate 60 degrees
  // 4B: Draw line segment
  // Tip: the rotate function work in radians, with use fraction of PI or radians(60)
  pushMatrix();
  translate(width*.85, height/4 + lineWidth);
  rotate(PI/3);
  
  lineSegment();
  popMatrix();
}

void keyPressed(){
  saveFrame("output.png");
}

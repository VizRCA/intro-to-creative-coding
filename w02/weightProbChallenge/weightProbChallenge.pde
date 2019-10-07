/** Tasks
 * 1. Generate a random number from 1-100;
 * 2. Write an if statement that uses 60:30:10 to draw either a square, circle or line
 *    i.e. 60% probability of square, 30% probability of circle, and 10% probability of a line
 */

size(640, 368);
background(255);
strokeWeight(1);
rectMode(CORNER);
ellipseMode(CORNER);

for (int y = 4; y < width; y += 16) 
{
  for (int x = 4; x < width; x += 16) 
  {  
    // 1. Generate random number, stored in a variable, for each cell

    // 2. Write a conditional to check the random number 
    //    and do different drawing function based on 60:30:10 probability
    // Tip --> you will need the following drawing functions
    // rect(x, y, 8, 8);
    // ellipse(x, y, 8, 8);
    // line(x, y, x+8, y+8);    
  }
}

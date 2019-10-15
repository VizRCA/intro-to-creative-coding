/** Tasks
 *  1 - Make a for loop that draws 8 circles
 *  2 - Each circle fill should be a gray from the arrays of "grays"
 *  3 - Each circle should be evenly spaced across screen
 *  Tips: use the following draw command "ellipse(xPosition, 300, 50, 50)"
 *  The code should do the same thing as the statements below:
 *  fill(0);
 *  ellipse(50, 300, 50, 50);
 *  fill(30);
 *  ellipse(150, 300, 50, 50);
 *  fill(60);
 *  ellipse(250, 300, 50, 50);
 *  fill(90);
 *  ellipse(350, 300, 50, 50);  
 *  fill(120);
 *  ellipse(450, 300, 50, 50);
 *  fill(150);
 *  ellipse(550, 300, 50, 50);
 *  fill(180);
 *  ellipse(650, 300, 50, 50);
 *  fill(210);
 *  ellipse(750, 300, 50, 50);  
 */
float[] grays = {0, 30, 60, 90, 120, 150, 180, 210};


size(800, 600);
background(255);
noStroke();

// Do here

// Write a for loop that has an ending condition of 8
for (int i = 0; i < grays.length; i++)
{
   // Inside it
   // set the fill color using and array index to the "grays" array
   fill(grays[i]);
   int xPosition = 50 + 100*i;
   // draw a circle at a multiple of the current for loop index
   ellipse(xPosition, 300, 50, 50);
   fill(0);
   text( grays[i],xPosition, 350);
}  

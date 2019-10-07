// Adapted from https://www.openprocessing.org/sketch/1955/#

/** IDEAS to try
 *  1. Make this draw in a section of the screen only
 *  2. Turn this into a single function, so you can use in larger composition
 *  3. Make it a coloured pattern, or form of tiling.
 */
size( 800, 600 );
background( 255 );
noFill();

// Move offscreen, so it fills in properly
translate( -10, -30 );
strokeJoin(MITER);
strokeWeight(4);
for ( int k = 0; k < height/12 + 4; k++ ) 
{
  // Each shape is a line across the screen, going up and down
  beginShape();
  for ( int i = 0; i < width/20; i++ ) 
  {
    vertex( 0  + i*40, 0 + k*12 );
    vertex( 20 + i*40, 20 + k*12 );
    vertex( 40 + i*40, 0 + k*12 );
  }
  endShape();
}
saveFrame("output.png");

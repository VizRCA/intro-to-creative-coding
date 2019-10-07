
// All the rectangles are drawn at 0, 0
// Translate is used to move the co-ordinate grid - 
// and reposition the 0, 0 point on the screen 
// This has the effect of shifting and rotating the shapes. 
// Using translation is like moving and rotating a grid of graph paper before drawing.

size (300, 300); 
background (255);

// draw a rectangle at 0, 0: no translation
fill (200);
rect (0, 0, 60, 60);

// translate the co-ordinate grid and redraw the rectangle (under translation)
pushMatrix ( );
translate (80, 80);
fill (140);
rect (0, 0, 60, 60);
popMatrix( );

// pushMatrix and popMatrix re-set the co-ordinate grid 
// so we can perform another translation before rotating and drawing the rectangle
pushMatrix( );
translate (160, 160); // translate co-ordinates
rotate (radians (45)); // rotate co-ordinate grid, convert degrees to radians.
fill (100);
rect (0, 0, 60, 60); 
popMatrix ( );

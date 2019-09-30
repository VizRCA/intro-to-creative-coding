// All functions end with parenthesis ( ) and a semi colon ;
smooth ();              // smooth the graphics on screen.

// Many functions require extra information (called “arguments”) to specify how the function works. 

// Arguments can be number values:
strokeWeight (10);     // set the stroke to 10 pixels wide
strokeWeight (5);      // set the stroke to 5 pixels wide


// Arguments can be other types of data, such as text:
println ("hello");


// Some functions need more than one argument.
// Extra arguments are separated using a comma:
size (400, 200);          // set the width and height of the display window


// Arguments of different data types can be used together. 
// For example, the function for writing text on the screen needs to know what text to display
// and the x, y position on the screen : 
text ("hello", 10, 20);   // display text at x:10, y:20

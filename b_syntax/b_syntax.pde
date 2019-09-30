//COMMENTS (//) 
// Using the double forward slash sign creates comments which allows you to add 'notes' to the code.
// Many of the code examples in the book will include comments alongside the code to help explain it.

/* 
 several lines of comments can be created
 using the forward slash and asterisk together
*/

//--------------------------------------------------------//

// SEMI-COLON (;) 
// All lines of code end with a semi-colon (;)  
// A missed semi-colour will result in an error. 

//--------------------------------------------------------//

// CURLY BRACKETS ({}): 
//These indicate a “block” of code, similar to a paragraph. 
// basic 'blocks' of code are 'set up' and 'draw'.

void setup ( ) { 
  // code within these curly brackets are treated as a 'block'
  // things within 'setup' happen once - when the code is first run.
  println ("this is setup"); // note the ; at the end
}


void draw ( ) { 
  // code within these curly brackets are treated as a 'block'
  // things within 'draw' happen continually whilst the code is running.
  println ("this is draw");
}

//--------------------------------------------------------//

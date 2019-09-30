// User Defined Functions. 
 
// the setup() function is run once, when the programme starts:
void setup ( ) { 

  // user-defined functions can be created and then called within the code: 
  // 'printMessage' and 'calcSum' are functions created in this script. 
  // once created they can be called and used within the code:

  printMessage ("this is a test");
  
  // call the custom function 'calcSum':
  calcSum (10, 2); // outputs 20
  calcSum (5, 30); // outputs 150

} 

// the draw() function continually exectutes lines of code.
void draw ( ) {
} 


// These are the user-defined functions: 
// this function outputs a simple string 
void printMessage (String message) { 
  println (message);
}

// this function outputs the sum of 2 numbers
void calcSum (float num1, float num2) {
  float number1 = num1;
  float number2 = num2;
  println (number1 * number2);
}

Introduction to Creative Coding
==== 

8 week modular course to creative coding using Processing and Arduino, topics covered in each week are as follows:

+ Week 1 - [Course overview and using the Processing IDE](https://github.com/VizRCA/intro-to-creative-coding/blob/master/w01)
+ Week 2 - [Drawing with algorithms; OpArt etc with Processing](https://github.com/VizRCA/intro-to-creative-coding/blob/master/w02)
+ Week 3 - [Animation, Interaction and Basic Object Oriented Programming (OOP)](https://github.com/VizRCA/intro-to-creative-coding/blob/master/w03)
+ Week 4 - [Image, Video and Camera with Processing](https://github.com/VizRCA/intro-to-creative-coding/blob/master/w04)
+ Week 5 - Using libraries, data, and code from the internet
+ Week 6 - [Arduino intro](https://github.com/JohnMechatronics/Introduction-To-Arduino) - Week six is handled by the mechatronics team, so the content is held on another github repo.
+ Week 7 - [Connecting Arduino and Processing](https://github.com/VizRCA/intro-to-creative-coding/blob/master/w07)
+ Week 8 - Using Open Sound Control (OSC) for multiple app communication

Assembled by Thomas Deacon, 2019

# Processing Language Primer (Java)

+ [Basic Functions](#basic-functions)
+ [Syntax Examples](#syntax-examples)
+ [Variable Types](#variable-types)
+ [Conditionals](#conditionals)
+ [Loops](#loops)
+ [User Functions](#user-defined-functions)
+ [Arrays](#arrays)
+ [Debugging and Error Messages](#debugging-and-error-messages)

## Basic Functions
Processing has its own set of functions: 
A full list of Processing functions can be found at https://processing.org/reference/

```processing

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
```

## Syntax Examples

[Programming Syntax is the words, phrase and context that make up a correctly structured piece of source code.](https://en.wikipedia.org/wiki/Syntax_(programming_languages))

```processing

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
```


## Variable Types
Variables are used to name and store pieces of data.
Variables are created by setting the data type, the name and the value of the variable:

```processing
// create a variable called myVar with a starting value of 100.
int myVar = 100; 

// once created the value of myVar can be found, or changed. 
println (myVar);  // outputs 100
myVar = myVar + 10; // add 10 to the variable
println (myVar);  // outputs 110

//------------------------------------//

// BASIC VARIABLE TYPES: 
// 'int' values are whole numbers:
int score = 30;             

// 'float' values are numbers that may be decimal numbers
float x_pos = 120.5;     

// 'String' values are used to store text characters.
String userName = "Harry";  

//------------------------------------//


// Once created, the value of the variable can be used and/or changed. 
String name = "Andrew";       // creates a new variable ('name')
println (name);               // output 'Andrew'
name = "Bill";                // change the variable value
println (name);               // output "Bill"


//------------------------------------//


// number variables can be easily manipulated using simple mathematical functions (+ * - /) 
float num = 100; 

println (num); 
num = num + 20; // add 20
println (num); 
num = num / 2; // divide 2. 
println (num); 
num = num * 4; // multiply by 4; 
println (num);
num = num - 120; // minus 120
println (num); 
```


## Conditionals

Conditional statements are used to make decisions.
A common conditional statement is the 'if statement'. 

A CONDITION is defined within the brackets. e.g ( x > 10) 
If the condition is TRUE then the code within the block is executed. 
Otherwise it is ignored. 

```processing

/* Values of variables are tested using standard comparison operators: 
 >   Greater Than 
 >=  Greater Than or Equal to 
 <   Less Than
 <=  Less Than or Equal to
 ==  Equal to.
*/

// The following are examples if statements to test the value of the variable 'age':

int age = 45; 

// Make decisions based on the value of 'age'

// is age greater than 40? 
if (age > 40) { 
  println ("you are over 40");
}

// is age less than 40? 
if (age < 40) {
  println ("you are younger than 40");
} 

// is age equal to 40?
if (age == 40) { 
  println ("you are 40 years old");
}


// If/Else statements allow an alternate piece of code to be processed if the condition is not met. 

float score = 75; 

if (score < 50) { 
  println ("nevermind you did not manage 50 points");
}  
else { 
  println ("well done you managed to score 50 or above");
} 
```

## Loops

A for loop repeats line(s) of code a set number of times.

```processing
// FOR LOOP 

// the following is an example of a for loop which loops 10 times. 
// the variable 'i' is used to count the loop
// i starts at 0 (i=0)
// the loop is repeated whilst i is less than 10 (i<10) 
// after each loop i is increased by 1 (i++) 


for (int i=0; i<10; i++) {
  println (i); // outputs the value of 'i' during each loop 
}

// the result is an output of  "0 1 2 3 4 5 6 7 8 9"
```

While loops are similar but read in a different way:

```processing
// WHILE LOOP. 

// the following is an example of a while loop which loops 10 times. 
// the variable 'i' is used to count the loop
// i starts at 0 (i=0)
// the loop is repeated whilst i is less than 10 (i<10) 
// after each loop i is increased by 1 (i++) 

int i = 0;
while(i < 10){
  println (i); // outputs the value of 'i' during each loop
  i++;
}

// the result is an output of  "0 1 2 3 4 5 6 7 8 9"

```

Use the one that makes sense to you!

## User Defined Functions

Some functions are built into Processing: e.g. setup( ) and draw( ), but you can also make your own.

```processing
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
```

## Arrays

An array is used to hold a list of items (data).
```processing
// ARRAYS  

// The following creates a list to hold 'String' data 
// The list is created with 4 spaces.
String [] shoppingList = new String [4];

// Each of the 4 spaces in the shoppingList array are populated with information 
shoppingList[0] = "apples";
shoppingList[1] = "milk";
shoppingList[2] = "eggs";
shoppingList[3] = "bread";

// individual items in an array can be found and output: 
println (shoppingList[2]); // outputs 'eggs' 

// the size (length) of an array can be found by using 'array.length'
println ("number of items in shopping list =  " + shoppingList.length); 


// for loops are useful ways to cycle through an array and get each item in turn: 

for (int i=0; i<shoppingList.length; i++) { 
  println (shoppingList[i]);  
}
```

## Debugging and Error Messages

You can send information to the Processing console to understand what your sketch is doing.

```processing
// Example 05-02 from "Getting Started with Processing" 
// by Reas & Fry. O'Reilly / Make 2010

void setup() {
  println("I’m starting");
}

void draw() {
  println("I’m running");
}
```

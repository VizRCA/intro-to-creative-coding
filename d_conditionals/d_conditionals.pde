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

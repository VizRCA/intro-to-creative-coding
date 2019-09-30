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

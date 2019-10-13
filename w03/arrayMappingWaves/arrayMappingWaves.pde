/**
 * Array. 
 * 
 * An array is a list of data. Each piece of data in an array 
 * is identified by an index number representing its position in 
 * the array. Arrays are zero based, which means that the first 
 * element in the array is [0], the second element is [1], and so on. 
 * In this example, an array named "coswave" is created and
 * filled with the cosine values. This data is displayed three 
 * separate ways on the screen.  
 */

// Setup global scope arrays
float[] coswave;
float[] sinwave;
float[] tanwave;


size(640, 360);
// make the arrays the size of the screen width
coswave = new float[width];
sinwave = new float[width];
tanwave = new float[width];
// Fill each array position with maths functions outputs
for (int i = 0; i < width; i++) 
{
  // Use a mapping function to "stretch" position across screen 
  // to something sensible for the maths function
  float amount = map(i, 0, width, 0, PI); // ??? play with PI multiples/divisors 
  coswave[i] = abs(cos(amount));
  sinwave[i] = abs(sin(amount));
  tanwave[i] = abs(tan(amount));
}

background(255);

// Draw each array in a third of the screen height
int y1 = 0;
int y2 = height/3;
for (int i = 0; i < width; i++) {
  stroke(coswave[i]*255);
  line(i, y1, i, y2);
}

y1 = y2;
y2 = y1 + y1;
for (int i = 0; i < width; i++) {
  stroke(sinwave[i]*255);
  line(i, y1, i, y2);
}

y1 = y2;
y2 = height;
for (int i = 0; i < width; i++) {
  stroke(tanwave[i]*255);
  line(i, y1, i, y2);
}

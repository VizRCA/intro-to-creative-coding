// Adapted from https://www.bloomsbury.com/cw/data-driven-graphic-design/resources/chapter-6-large-live-external-data/

// loading Comma Separated Values (CSV) data will create a one single long line of data: 
// Using the split( ) function the data can be split into individual values: 

size(1000, 200);
background(0);
// Load the data as a single string.
String [] loadedData = loadStrings ("weather_data.txt"); 
println (loadedData[0]); // outputs single list of data

// Split the string into an array of individual values: 
String[] dataAsStrings = split(loadedData[0], ',');
// this results in a list of strings

// Convert the data into number values which are more useful 
// (note that the string "1" is not the same as the number 1). 
int [] dataAsNumbers = int (dataAsStrings);

println (dataAsNumbers); //outputs array of numbers

// Get the data range
int min = min(dataAsNumbers);
int max = max(dataAsNumbers);

// Make some drawing variables
int step = width/dataAsNumbers.length; // Proportional to data length
int x = step/2; // Move in abit

// Make a graph holder
stroke(128);
line(x, 20, x, height-20);
line(x, height-20, width-x, height-20);

strokeWeight(3);
stroke(255);
// Draw a graph line of the weather data
for (int i = 0; i < dataAsNumbers.length-1; i++)
{
  // Map the data point to the range 
  float y1 = map( dataAsNumbers[i], min, max, 20, height-20);
  float y2 = map( dataAsNumbers[i+1], min, max, 20, height-20);
  line(x, y1, x+ step, y2);
  x += step;
}

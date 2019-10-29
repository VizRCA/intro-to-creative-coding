// Data plotting challenge Map 
// User data is stored in an external comma-separated (csv) data file. ('userData.csv').
// Get the data from the external data file and plot data values onto the screen.
// Visualisation should map
// X = duration
// Y = length
// Point size = avgVelocity
// You need to configure the mapping ranges for these :)

Table table; 
float dMax, dMin, lMax, lMin, vMax, vMin;

void setup ( ) { 
  size (650, 450);
  background (255);
  colorMode(HSB, 255, 255, 255, 100);
  
  readData();
  printTable();
  computeColumnMinMax();
  plotTable();
}

void readData()
{
  // load table data, it uses a header in the file.
  table = loadTable ("userData.csv", "header"); 
}

void printTable()
{
  // check row data and output values
  for (int i=0; i<table.getRowCount(); i++) {
    TableRow row1 = table.getRow (i); // get 1st row
    int id = row1.getInt("id");
    float  d = row1.getFloat ("duration"); // gets the 1st item in the row
    float  l = row1.getFloat ("length"); // gets the 2nd item in the row
    float  v = row1.getFloat ("avgVelocity"); // gets the 3rd item in the row
    println (id + " = " + d + ", " + l+ ", "+v);
  }
}

void computeColumnMinMax()
{
  // You can get a whole column of numbers using the command
  // table.getFloatColumn("columnName");
  // table.getIntColumn("columnName");
  // use processing min and max commands
  
  dMax = 0;
  dMin = 0;

  
  lMax = 0;
  lMin = 0;

  
  vMax = 0;
  vMin = 0;
}

void plotTable()
{
  // Get all the locations from the data, map them, and plot values on screen
  for (int i=0; i<table.getRowCount(); i++) { 
    // get current row
    
    // get values from the row for each variable

    // Map id to hue, as propotrion of total number of rows.
    float cm = 0;

    // Use the map function to place x and y of circle
    float x = 0;
    float y = 0;
    float s = 0;

    // draw circle at location 
    fill (cm, 200, 134, 75);
    stroke(25, 50, 25, 50);
    ellipse (x, y, s, s);
  }
}

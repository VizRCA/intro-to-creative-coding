// Source https://www.bloomsbury.com/cw/data-driven-graphic-design/resources/chapter-6-large-live-external-data/

// Data Map 
// Map locations are stored in an external tab-separated (tsv) data file. ('maplocations.tsv').
// Get the data from the external data file and plot data values onto the screen.


Table table; 

void setup ( ) { 
  size (650, 450);
  background (255);

  // load table data 
  table = loadTable ("maplocations.tsv"); 

  // get one row from the data and output values
  TableRow row1 = table.getRow (0); // get 1st row
  int  xpos = row1.getInt (0); // gets the 1st item in the row
  int  ypos = row1.getInt (1); // gets the 2nd item in the row
  println ("co-ordinates = " + xpos + ", " + ypos);


  // Get all the locations from the data and plot values on screen
  for (int i=0; i<table.getRowCount(); i++) { 
    TableRow row = table.getRow (i); // get current row
    int x = row.getInt(0);  // find first location 
    int y = row.getInt(1);  // find second location

    // draw circle at location 
    fill (255, 0, 125);
    stroke(255, 0, 125, 50);
    ellipse (x, y, 5, 5);

    // connect this row item with the previous row ite, 
    if (i>0) { 
      TableRow  prevRow = table.getRow (i-1); // get previous row
      int x2 = prevRow.getInt (0); // get previous row x and y values
      int y2 = prevRow.getInt (1); 
      line (x, y, x2, y2); // connect current and previous items
    }
  }
}

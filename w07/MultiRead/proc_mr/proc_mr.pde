// Read data from the serial port and assign it to a variable. Set the fill a 
// rectangle on the screen using the value read from a sensor connected 
// to the Wiring or Arduino board. Have to tell processing to read the data until
// a newline is given by Arduino.
 
import processing.serial.*; 
 
int linefeed = 10; // new line ASCII = 10
Serial port;  // Create object from Serial class
int valA, valB;      // Data received from the serial port 
 
void setup() { 
  size(200, 200); 
  noStroke(); 
  frameRate(10);  // Run 10 frames per second
  // Open the port that the board is connected to and use the same speed (9600 bps) 
  String portName = Serial.list()[4];
  println(portName);
  port = new Serial(this, portName, 9600); 
  // here we're saying that we need to buffer until 'NEW LINE'
  port.bufferUntil(linefeed);
} 

void draw() {  
  background(204);                // Clear background
  fill(valA);                      // Set fill color with the value read
  rect(50, 50, 100, 100);         // Draw square
  fill(valB);                      // Set fill color with the value read
  rect(75, 75, 50, 50);         // Draw square
} 

void serialEvent (Serial myPort) 
{
  // read serial buffer as string
  String myString = myPort.readString();
 
  // if we have any other bytes than linefeed
  if (myString != null) 
  {
    // trim crap
    myString = trim(myString);
    // split the string at commas 
    // and convert sections into integers. 
    String sensors[] = split(myString, ',');
    if(sensors.length>1)
    {
      valA = int(sensors[0]); 
      valB = int(sensors[1]); //remember to create another value variable
      print(valA);
      print(',');
      println(valB);
    }
  }
}

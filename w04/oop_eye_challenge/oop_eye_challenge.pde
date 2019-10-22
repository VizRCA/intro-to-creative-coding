// Object-oriented programming example in Processing
// First tasks to do are in the Eye tab. Then finish here with array task.

// TODO 5 setup an array of eyes that can fill the screen.
Eye[] eyes;
float diameter = 80;

void setup() {
  size(500, 650, P2D);


  // Figure out how the array needs to be to fill the whole screen with eyes
  // you need to use the screen dimensions and diameter variable
  int nEyes = int(width/diameter * height/diameter)-2;

  // Make and array of eyes, using nEyes
  eyes = new Eye[nEyes];

  // Nested for loops to create eyes
  int i = 0;
  for (int x = int(diameter/2); x < width - (diameter/2); x+= diameter)
  {
    for (int y = int(diameter/2); y < height - (diameter/2); y+= diameter)
    {
      eyes[i] = new Eye (x, y, diameter, 
        random(5, 50), 
        color(random(255), random(255), random(255)));
      i++;
    }
  }
}

void draw() {
  background(200);
  for (int i =0; i < eyes.length; i++) {
    eyes[i].lookAt(mouseX, mouseY);
    eyes[i].drawEye();
  }
}

// Object-oriented programming example in Processing
// First tasks to do are in the Eye tab. Then finish here with array task.

Eye eye1;
Eye eye2;

// TODO 5 setup an array of eyes that can fill the screen.
Eye[] eyes;
float diameter = 80;

void setup() {
  size(500, 650, P2D);

  int nEyes = int(width/diameter * height/diameter)-2;
  eyes = new Eye[nEyes];
  println(eyes.length);
  int i = 0;
  for (int x = int(diameter/2); x < width-(diameter/2); x+=diameter)
  {
    for (int y = int(diameter/2); y < height-(diameter/2); y+=diameter)
    {
      println(x, y, i);
      eyes[i] = new Eye(x, y, diameter, random(5, 50), color(random(255), random(255), random(255)));
      i++;
    }
  }
}

void draw() {
  background(200);

  for (int i = 0; i < eyes.length; i++)
  {
    eyes[i].lookAt(mouseX, mouseY);
    eyes[i].drawEye();
  }
}

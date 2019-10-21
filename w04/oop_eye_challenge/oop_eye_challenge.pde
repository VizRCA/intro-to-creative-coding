// Object-oriented programming example in Processing
// First tasks to do are in the Eye tab. Then finish here with array task.

Eye eye1;
Eye eye2;

// TODO 5 setup an array of eyes that can fill the screen.
Eye[] eyes;

void setup() {
  size(500, 650, P2D);
  eye1 = new Eye(350, 100, 80);
  eye2 = new Eye(430, 100, 80);
  
  
}

void draw() {
  background(200);
  eye1.lookAt(mouseX, mouseY);
  eye1.drawEye();
  eye2.lookAt(mouseX, mouseY);
  eye2.drawEye();
}

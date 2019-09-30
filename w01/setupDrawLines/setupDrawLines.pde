// Animating For Loops 
// a for loop is used to repeat the drawing of a line.

int c; // current count
int cm = 30; // max count

void setup() {
  size (300, 300); 
  frameRate(12); // set speed of draw loop
}

void draw() {
  background (255);
  // in this example each loop repeats the line () command 60 times. 
  // the value of i is used to set the x location of each line
  // 60 lines are drawn using only a few lines of code.
  for (int i=0; i<cm; i++) { 
    strokeWeight (1);
    if(i == c) strokeWeight(6); // increase weight when count is same as line being drawn, notice the effect.
    line (i*10, 20, i*10, 100);
  } 

  // the strokeweight of each line is increased with the value 'i' 
  // the lower point in the line is spaced 15 pixels apart - creating an offset
  for (int i=0; i<cm; i++) { 
    strokeWeight (1);
    if(i == c) strokeWeight(6);
    line (i*10, 120, i*15, 200);
  } 

  for (int i=0; i<cm; i++) { 
    strokeWeight (1);
    if(i == c) strokeWeight(6);
    line (i*15, 220, i*10, 300);
  }
  // increment and wrap the count variable
  c++;
  if(c>cm)c = 0;
}

# Week 1 - Basics

+ [Drawing Shapes](#drawing-functions)
+ [Colour](#colour)
+ [Variables for drawing](#variables)
+ [For Loops and Patterns](#for-loops)
+ [Translate and Rotate](#translate-and-rotate)
+ [Setup and Draw](#setup-and-draw)


## Drawing Functions

```processing
// Simple Drawing Functions.

// set the size of display window.
size (600, 600); 

// draw a circle at x:150, y:300
ellipse (150, 300, 120, 120);

// draw a square at x:240, y:240
rect (240, 240, 120, 120);

// connect 3 points (x1, y1, x2, y2, x3, y3) to draw a triangle
triangle (450, 220, 380, 360, 520, 360);
```

Order matters:

```processing
size(256,144); 
background(255);

rect(50,15,80,80);           // Square left
rect(50+80,50,80,40);        // Long rect, to place adjacent u cn add values 
rect(70+80+20,50+40,60,40);  // Right corner rect
rect(50+80,50+40,20,40);     // small rect

ellipse(50+40,50+40,80,80);
```

## Colour

```processing
size (600, 600); 

// background() is used to set the color of the window
// greyscale values go from 0 (black) to 255 (white)

background (220); // light grey fill 


// RGB colour is created using 3 numbers representing 'red' 'green' and 'blue'.
// fill ( ) sets the current fill color
// stroke ( ) sets the current stroke (outline color). 

// RGB values can be found using Tools > Color Selector from the menu
strokeWeight (5); // set the width of the outline stroke

fill (13, 184, 216); //blue fill color
stroke (12, 83, 232);  //dark blue outline
ellipse (150, 300, 120, 120);

fill (214, 104, 13); // change fill to orange
stroke (0); // change outline to black 
rect (240, 240, 120, 120);

// Adding a 4th number to the RGB fill is used to alter the alpha value.
fill (39, 149, 6, 50); // green fill, with 50% alpha
stroke (222, 16, 16); // red outline
triangle (450, 220, 380, 360, 520, 360);
```

RGB is one colour mode, but the other, HSV, can be useful for different types of blends across colour ranges.

```processing
size(200,100);
noStroke();
colorMode(RGB, 100);
for (int i = 0; i < 100; i++) {
  for (int j = 0; j < 100; j++) {
    stroke(i, j, 0); // <- Now the same METHOD is used with different ARGUMENTS (R, G, B)
    point(i, j);
  }
}

noStroke();
colorMode(HSB, 100);
for (int i = 0; i < 100; i++) {
  for (int j = 0; j < 100; j++) {
    stroke(i, j, 100); // <- Now the same METHOD is used with different ARGUMENTS (H, S, V)
    point(i+100, j);
  }
}
```

## Variables
Variables can be used to change or move graphics.



### Repetition and Change

Variables allow the behaviours of repeating the use of numbers or changing them with a specific pattern.

```processing
int w = 255; // size of rectangles
int p = 0;   // position of rectangle 
noStroke();
size(255,255);
fill(w);
rect(p,p,w,w);
w/=2;
p+=w;
fill(w);
rect(p,p,w,w);
w/=2;
p+=w;
fill(w);
rect(p,p,w,w);
w/=2;
p+=w;
fill(w);
rect(p,p,w,w);
w/=2;
p+=w;
fill(w);
rect(p,p,w,w);
```

But doing this sort of things in a long list is wasteful, so use a loop.

## For Loops

```processing
// a for loop is used to repeat the drawing of a line.

size (300, 300); 
background (255);

// in this example each loop repeats the line () command 60 times. 
// the value of i is used to set the x location of each line
// 60 lines are drawn using only a few lines of code.
for (int i=0; i<60; i++) { 
  line (i*10, 20, i*10, 100);
} 

// the strokeweight of each line is increased with the value 'i' 
// the lower point in the line is spaced 15 pixels apart - creating an offset
for (int i=0; i<60; i++) { 
  strokeWeight (i/10);
  line (i*10, 120, i*15, 200);
} 
```

Adjusting the previous repetition and change example, you can use a special dual iterating version of a for loop to do concise iterations.

```processing
noStroke(); // just use fills
size(255,255); // set canvas size
for( int w = 255, p = 0; w>=1; w/=2, p+=w )
{
  // for each step of the for loop, reduce size and increase position
  fill(w);
  rect(p,p,w,w);
}
```

Nested for loops allow for grid patterns.

```processing 
noStroke(); // just use fills
size(255,255); // set canvas size
background(255); // set white background
colorMode(HSB,255); // use 
int s = 8;
int hop = s*2+1;
for( int x = s/2; x < width; x += hop )
{
  for( int y = s/2; y < height; y += hop ){
  fill((x+y)/2,175,200);
  rect(x,y,s,s);}
}
```


## Translate and Rotate

```processing

// All the rectangles are drawn at 0, 0
// Translate is used to move the co-ordinate grid - and reposition the 0, 0 point on the screen 
// This has the effect of shifting and rotating the shapes. 
// Using translation is like moving and rotating a grid of graph paper before drawing.

size (300, 300); 
background (255);

// draw a rectangle at 0, 0: no translation
fill (200);
rect (0, 0, 60, 60);

// translate the co-ordinate grid and redraw the rectangle (under translation)
pushMatrix ( );
translate (80, 80);
fill (140);
rect (0, 0, 60, 60);
popMatrix( );

// pushMatrix and popMatrix re-set the co-ordinate grid 
// so we can perform another translation before rotating and drawing the rectangle
pushMatrix( );
translate (160, 160); // translate co-ordinates
rotate (radians (45)); // rotate co-ordinate grid, convert degrees to radians.
fill (100);
rect (0, 0, 60, 60); 
popMatrix ( );

```

## Setup and Draw

the built-in functions of `setup` and `draw` allow for motion and repeat drawing:

```processing

// This example uses one changing variable to continually 
// move a shape across the screen.

// create a variable to hold the x value of a shape. 
// this will be a value that continually changes.
float xpos = 10;

void setup ( ) { 
  size (300, 300);
}

// the draw() function is continually repeated:
void draw() { 
  // draw a background to the scene
  background (90);
  
  // draw a circle using the value xpos to position it on the x axis
  ellipse (xpos, 50, 10, 10); 
  // increase xpos by 2 (moves the shape)
  xpos = xpos + 2; 
  
  // if the xpos is greater than the width of the screen 
  // then reset it back to 0. 
  if (xpos > 320) { 
    xpos = 0; 
  }
  
  // another circle is draw at the position of the mouse 
  // using mouseX and mouseY as its x and y values. 
  ellipse (mouseX, mouseY, 40, 40);
}
```

Adapting the previous line drawing example:

```processing
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

```
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

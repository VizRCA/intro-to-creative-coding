// Adapted from https://www.bloomsbury.com/cw/data-driven-graphic-design/resources/chapter-6-large-live-external-data/

// Import Text 

// A example of loading text from an external document 
// The document 'daffodils.txt' is located in the sketch's data folder. 
// this can be used to quickly get very large amounts of text data.

// The text document is loaded into an array of strings (called 'lines')
String [ ] lines; 
int i = 0; // Line index

void setup() {
  size(1000, 1000);
  // Use processing command to get text from a file in data folder
  lines = loadStrings ("daffodils.txt"); 

  // Drawing commands
  noStroke();
  background(0);
  textSize(20);
}

void draw() {
  // Fade effect
  fill(0, 6);
  rect(0, 0, width, height);

  // Present line once each second
  if (frameCount%60==0) {
    fill(255);
    // Random place along width, always within frame
    float xpos = random(80, width/2);
    // Map line number vertically to frame height
    float ypos = map(i , 0, lines.length, 20, height);
    // float yposs = 20+((float)i/lines.length*height);
    text (lines[i], xpos, ypos); 

    // Iterate and wrap the line index
    i++;
    if (i >= lines.length) {
      i = 0;
    }
  }
}

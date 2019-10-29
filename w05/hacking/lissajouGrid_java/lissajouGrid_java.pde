void setup()
{
  size(600, 600);
  background(20);
  noiseDetail(9, 0.35);
  noiseSeed(3654765);
}

void draw()
{
  colorMode(RGB, 255);
  fill(25);
  noStroke();
  rect(0, 0, width, height);
  noFill();

  strokeWeight(2);
  colorMode(HSB, 1.0);

  line(10,1,.2);
  line(20,2,.6);
  line(30,3,.6);
  blendMode(BLEND);
}

void line(int levels, int item, float min) {
  stroke( .9, .3, .9);
  float size = height * 0.5 ; // 

  float a, x, y;
  translate(width/2, (height/2) + item*(height/6));  
  float ts = .011;
  // float cs = 0.001;
  int i = 3 * levels;
  float ns = map(noise(frameCount*ts), 0, 1, min, 1.0);

  PVector[] verts = new PVector[i];
  float c, s;
  for (int r = 0; r < i; r++) {
    a = (float)r / (float)i * TWO_PI;
    c = cos(a);
    s = sin(a);
    x =  map(noise(c * ns, s * ns, sin(c) * ns + 0.0001 + (float)frameCount*ts), 0, 1, -1, 1 ) * size;
    y =  map(noise(c * ns, s * ns, c*ns + (float)frameCount*ts), 0, 1, -1, 1 ) * size;
    verts[r]= new PVector(x, y);
    //verts[r].mult(1.5);
  }

  beginShape(LINES);    
  for (int r = 0; r < verts.length; r++) {
    vertex(verts[r].x, verts[r].y);
  }
  endShape();

  beginShape(LINES);    
  for (int r = 0; r < verts.length; r++) {
    vertex(-verts[r].x, verts[r].y);
  }
  endShape();


  resetMatrix();
}

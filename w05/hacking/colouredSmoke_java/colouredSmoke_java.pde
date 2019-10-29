int np = 300;
int startCol;

int wrapCount;
float hPeriod;
float hfMod;
float rxMod;

void setup()
{
  size(1700,720);
  background(255);
  noFill();
  noiseSeed( (int)random(100) );
  startCol = (int)random(255);
  hPeriod = random (height/2);
  hfMod  = random (50);
  rxMod = random(100)/100f;
  colorMode(HSB);
  smooth();
}

void draw()
{
  wrapCount++;
  
  beginShape();
    float sx = 0, sy = 0;
    float cx = wrapCount * 2 - 200 + ( (hfMod * cos(wrapCount / hfMod) ) * rxMod);
    for(int i = 0; i < np; i++) 
    {
      float angle = map(i, 0, np, 0, TWO_PI);
      
      float cy = (height / 2) + (hPeriod * sin(wrapCount / hPeriod));
      float xx = 100f * cos(angle + cx / 10f);
      float yy = 100f * sin(angle + cx / 10f);
      PVector v = new PVector(xx, yy);
      xx = (xx + cx) / 150f; 
      yy = (yy + cy) / 150f;
      v.mult(1f + 1.5f * noise(xx , yy ) * rxMod);
      vertex(cx + v.x, cy + v.y);
      if(i == 0) 
      {
        sx = cx + v.x;
        sy = cy + v.y;
      }
    }
    
    float hue = cx / 10 - startCol;
    if(hue < 0) hue += 255;
    stroke(hue, 100, 190); // minMaxValue(hue, 50,100)
    //fill(hue,70,100,125);
    strokeWeight(0.1);
    vertex(sx, sy);
  endShape();
  
  if(wrapCount>(width + 100))
  {
    wrapCount = 0; 
    noiseSeed( (int)random(100) );
    startCol = (int)random(255);
    hPeriod = random (height/2);
    hfMod  = random (50);
    rxMod = random(100)/100f;
  }
  
}

float minMaxValue ( float input, float min, float max)
{
  if(input < min) return min;
  else if (input > max) return max;
  else
    return input;
  
}

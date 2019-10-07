// Adapted from https://github.com/keijiro/sketches2016/Fans/Fans.pde

int fans = 32;
int lines = 32;

void setup()
{
  size(500, 500);
  //frameRate(2);
  
  smooth();
  strokeWeight(0.5);
  noFill();
  stroke(0);
  
}

void draw()
{
  background(255);

  stroke(50,0,0);

  for (int i = 0; i < lines; i++)
  {
    float l0 = random(0.1, 0.6);
    float l1 = abs(l0 + random(-0.3, 0.3));
    drawRing(l0, l1, fans);
  }
  
  stroke(0,50,0);
  
  for (int i = 0; i < lines * 2; i++)
  {
    float l0 = random(0.5, 1.5);
    float l1 = abs(l0 + random(-0.15, 0.15));
    drawRing(l0, l1, fans * 2);
  }
  
  stroke(0,0,55);
  
  for (int i = 0; i < lines * 3; i++)
  {
    float l0 = random(1., 2);
    float l1 = abs(l0 + random(-.5, 1.5));
    drawRing(l0, l1, fans * 3);
  }
  
  saveFrame("output.png");
  noLoop();
}

void keyPressed()
{
 if(keyCode == UP)fans +=4;
 if(keyCode == DOWN) fans -=4;
 if(keyCode == LEFT) lines --;
 if(keyCode == RIGHT) lines ++;
 println("fans: ",fans, "lines: ", lines);
 loop();
}

float fan2phi(int fan, int fans)
{
  return PI * 2 * fan / fans;
}

PVector polar(float phi, float l)
{
  float sn = sin(phi);
  float cs = cos(phi);
  return new PVector(
    (cs * l + 1) * 0.5 * width,
    (sn * l + 1) * 0.5 * height
  );
}

void drawRing(float l0, float l1, int fans)
{
  for (int fan = 0; fan < fans; fan += 2)
  {
    float phi0 = fan2phi(fan, fans);
    float phi1 = fan2phi(fan + 1, fans);
    float phi2 = fan2phi(fan + 2, fans);
    PVector v0 = polar(phi0, l0);
    PVector v1 = polar(phi1, l1);
    PVector v2 = polar(phi2, l0);
//    line(v0.x, v0.y, v1.x, v1.y);
//    line(v1.x, v1.y, v2.x, v2.y);
    bezier(v0.x, v0.y, v1.x, v1.y, v1.x, v1.y, v2.x, v2.y);
  }
}

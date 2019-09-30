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

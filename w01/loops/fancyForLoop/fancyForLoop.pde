noStroke(); // just use fills
size(255,255); // set canvas size
for( int w = 255, p = 0; w>=1; w/=2, p+=w )
{
  // for each step of the for loop, reduce size and increase position
  fill(w);
  rect(p,p,w,w);
}

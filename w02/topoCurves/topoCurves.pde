/** Complex Curves
 *  Using repition and change simple curves can become quite complex patterns
 */
 
int lineCount = 30;
size(600, 300);
background(255);
smooth();
noFill();

strokeWeight(1);
stroke(140);
for (int i = 0; i < lineCount; i++)
{
  beginShape();
  curveVertex(width-i*20, -20); // C1
  curveVertex(width-i*20, 0); // V1
  curveVertex(width-(i*width/lineCount), height/3); // V2
  curveVertex((i*width/lineCount), (height/3)*2); // V3
  curveVertex(width-i*40, height); // V4
  curveVertex(width-i*40, height+20); // C2
  endShape();
}

lineCount/=3;
strokeWeight(2);
stroke(0);
for (int i = 0; i < lineCount; i++)
{
  beginShape();
  curveVertex(i*20, -20); // C1
  curveVertex(i*40, 0); // V1
  curveVertex(i*width/lineCount, height/2); // V2
  curveVertex(i*40, height); // V3
  curveVertex(i*40, height+20); // C2
  endShape();
}

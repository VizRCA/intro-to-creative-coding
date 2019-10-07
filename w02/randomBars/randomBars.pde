/**
 * Random. 
 * 
 * Random numbers create the basis of this image. 
 * Each time the program is loaded the result is different. 
 */


size(640, 360);
background(255);
strokeWeight(8);

for (int i = 6; i <= width; i+=16) {
  float r = random(255);
  stroke(r);
  line(i, 0, i, height);
}

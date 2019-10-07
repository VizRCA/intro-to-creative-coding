size(600,200);
background(255);
noFill();
beginShape();
vertex(30,20);
vertex(width/2-30,20);
vertex(30,height-20);
vertex(width/2-30,height-20);
endShape();

noStroke();
fill(0);
beginShape();
for (int i = 20; i <= height-20; i+=5)
{
 vertex(width/2+30, i);
 vertex(width-30, i);
}
endShape();

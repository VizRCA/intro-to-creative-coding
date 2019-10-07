/** Curves
 *  curveVertex connects a series of points with a curve
 *  the first and last vertices act as control points
 */
size(600, 300);
smooth();
noFill();
beginShape();
curveVertex(20, 30); // C1
curveVertex(20, 40); // V1
curveVertex(30, 130); // V2
curveVertex(40, 180); // V3
curveVertex(40, 180); // C2
endShape();

/** Bezier
 *  Each bezier vertex defines position of two control points and an anchor
 *  bezierVertex(cx1,cy1,cx2,cy2,x,y)
 */

beginShape();
vertex(120, 30); // V1
bezierVertex(120, 140, 130, 230, 240, 80); // C1,C2,V2
endShape();

// Mixing vertex and bezierVertex can break curves to draw lines
beginShape();
vertex(320, 30); // V1
bezierVertex(220, 240, 230, 330, 340, 80); // C1,C2,V2
vertex(350,75); // V3
vertex(350,150); // V4
bezierVertex(250,270,275,190,380,270); // C3,C4,V5
endShape();

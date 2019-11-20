import oscP5.*;
import netP5.*;

OscP5 oscP5;

int currentCommand = 1;

void setup() {
  size(400,400);
  frameRate(25);
  
  oscP5 = new OscP5(this,13000);
}

void draw() {
  if(currentCommand == 1){
    background(219,40,40);  
  }
  else if(currentCommand == 2){
    background(40,50,219);  
  }
  else if(currentCommand == 3){
    background(197,40,219);  
  }
  else if(currentCommand == 4){
    background(219,192,40);  
  }
  
}

void oscEvent(OscMessage theOscMessage) {
  
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
  println(" value: "+(int)theOscMessage.arguments()[0]);
  currentCommand = (int)theOscMessage.arguments()[0];
}

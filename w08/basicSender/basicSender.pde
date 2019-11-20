import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;
String ipAddress = "127.0.0.1";

void setup() {
  size(400,400);
  frameRate(25);
  
  oscP5 = new OscP5(this,12000);
  myRemoteLocation = 
    new NetAddress(ipAddress,13000);
}

void draw() {
  background(0);  
}

void mousePressed() {
  OscMessage myMessage = new OscMessage("/sender/command");
  // Top left square
  if(mouseX < width/2 && mouseY < height/2){
    myMessage.add(1);  
  }
  // Top right square
  else if(mouseX > width/2 && mouseY < height/2){
    myMessage.add(2);  
  }
  // Bottom left square
  else if(mouseX < width/2 && mouseY > height/2){
    myMessage.add(3);  
  }
  // Bottom left square
  else if(mouseX > width/2 && mouseY > height/2){
    myMessage.add(4);  
  }

  /* send the message */
  oscP5.send(myMessage, myRemoteLocation); 
}

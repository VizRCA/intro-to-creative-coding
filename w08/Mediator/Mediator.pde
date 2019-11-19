import oscP5.*;
import netP5.*;
import controlP5.*;

import java.lang.String;
import java.util.Map;

///////////// GUI STUFF
ControlP5 cp5;
String topBarButtonNames = "A B C D";
String textValue = "";
Textarea incomingOscMessageTextarea;
Textarea mediatorMessageTextarea;

///////////// NETWORKING STUFF
OscP5 oscP5;
NetAddress dest;

///////////// CONTROL STUFF
boolean switchOn = true;

///////////// MADMAPPER COMMANDS
String[] defaultOscCommands = new String[]{
  "/quad/1/visible", 
  "/quad/2/visible", 
  "/quad/3/visible", 
  "/quad/4/visible"
};

void setup() {
  size(460, 345);
  /* Setup GUI system */
  setupGui();

  /* start oscP5, listening for incoming messages at port  12000*/
  oscP5 = new OscP5(this, 7777); //listen to itself for testing
  dest = new NetAddress("127.0.0.1", 13000); // Mapmapper
}

void draw()
{
  background(0);  
}

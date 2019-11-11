// Port finder

import processing.serial.*;

String[] ports = Serial.list();

for(int i = 0; i < ports.length; i++)
{
 println("Index ["+i+"] = " + ports[i]); 
}

println("Pick the one that matches the one you upload to in the Arduino IDE. For me this was 4");

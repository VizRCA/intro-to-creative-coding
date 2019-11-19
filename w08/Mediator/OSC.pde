void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  // I'm forcing a value to be sent here.
  if(theOscMessage.checkAddrPattern("/weka/outputs")==true && theOscMessage.arguments().length > 0) {
    incomingOscMessageTextarea.setText(    
      "### received a valid osc message from weka: " + theOscMessage.timetag() + "\n" 
      + theOscMessage.addrPattern() + " " + theOscMessage.get(0).floatValue() + "\n"
      + incomingOscMessageTextarea.text()
    );
  }
  else if(theOscMessage.checkAddrPattern("/opencv/outputs")==true && theOscMessage.arguments().length > 0) {
    incomingOscMessageTextarea.setText(    
      "### received a valid osc message from open cv: " + theOscMessage.timetag() + "\n" 
      + theOscMessage.addrPattern() + " " + theOscMessage.get(0).floatValue() + "\n"
      + incomingOscMessageTextarea.text()
    );
  }
  else if (theOscMessage.address()!="" && theOscMessage.arguments().length > 0) {
    incomingOscMessageTextarea.setText(    
      "### received a valid osc message from somewhere: " + theOscMessage.timetag() + "\n" 
      + theOscMessage.addrPattern() + " " + theOscMessage.get(0).floatValue() + "\n"
      + incomingOscMessageTextarea.text()
    );
  }
}

void sendOsc(String oscAddress, float[] px) {
  if(oscAddress == null || oscAddress == "") return;
  OscMessage msg = new OscMessage(oscAddress);
  // msg.add(px);
  for (int i = 0; i < px.length; i++) {
    msg.add(px[i]);
  }
  oscP5.send(msg, dest);
}

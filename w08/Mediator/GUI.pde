//////////// GUI
void setupGui()
{
  cp5 = new ControlP5(this);

  ButtonBar b = cp5.addButtonBar("onBarClick")
    .setPosition(0, 0)
    .setSize(460, 20)
    .addItems(split(topBarButtonNames, " "))
    ;
  /* If you need something to happen on button hover 
   b.onMove(new CallbackListener(){
   public void controlEvent(CallbackEvent ev) {
   ButtonBar bar = (ButtonBar)ev.getController();
   println("hello ",bar.hover());
   }
   }); 
   */

  incomingOscMessageTextarea = cp5.addTextarea("inosctxt")
                  .setPosition(0,20)
                  .setSize(width,70)
                  .setFont(createFont("arial",12))
                  .setLineHeight(14)
                  .setColor(color(128))
                  .setColorBackground(color(128,100))
                  .setColorForeground(color(255,100));
  mediatorMessageTextarea = cp5.addTextarea("medtxt")
                  .setPosition(0,90)
                  .setSize(width,70)
                  .setFont(createFont("arial",12))
                  .setLineHeight(14)
                  .setColor(color(128))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100));

  incomingOscMessageTextarea.setText("Incoming Osc Message Textarea");
  mediatorMessageTextarea.setText("Mediator Message Textarea");
  int midHeightAnchor = 200;
  int leftAlign = 20;
  int rightAlign = 240;
  int boxHeight = 40;

  

  cp5.addTextfield("oscAddress")
    .setPosition(leftAlign, midHeightAnchor)
    .setSize(200, boxHeight)
    .setFont(createFont("arial", 20))
    .setAutoClear(false)
    ;

  cp5.addTextfield("oscValues")
    .setPosition(leftAlign, midHeightAnchor + boxHeight*1.75)
    .setSize(200, boxHeight)
    .setFont(createFont("arial", 20))
    .setAutoClear(false)
    ;

  cp5.addBang("clear")
    .setPosition(rightAlign, midHeightAnchor)
    .setSize(2*boxHeight, boxHeight)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;

  cp5.addBang("send")
    .setPosition(rightAlign, midHeightAnchor + boxHeight*1.75)
    .setSize(2*boxHeight, boxHeight)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;

    cp5.addScrollableList("dropdown")
     .setPosition(0, midHeightAnchor-boxHeight)
     .setSize(width, 100)
     .setBarHeight(boxHeight/2)
     .setItemHeight(boxHeight/2)
     .addItems(defaultOscCommands)
     .setType(ScrollableList.DROPDOWN) // currently supported DROPDOWN and LIST
     ;
}

void dropdown(int n) {
  /* request the selected item based on index n */
  Textfield tf = cp5.get(Textfield.class, "oscAddress");
  String command = (String)cp5.get(ScrollableList.class, "dropdown").getItem(n).get("name");
  tf.setText(command);
  tf.submit();
}

void onBarClick(int n) {
  println("bar clicked, item-value:", n);
  switch (n) {
  case 0:
    // code block

    break;
  case 1:
    // code block

    break;
  case 2:
    // code block

    break;
  case 3:
    // code block

    break;
  default:
    // code block
  }
}

void controlEvent(ControlEvent theEvent) {
  if (theEvent.isAssignableFrom(Textfield.class)) {
    /*
    switch(theEvent.getName())
     {
     case "oscAddress":
     break;
     case "oscValues":
     break;
     default:
     }
     println("controlEvent: accessing a string from controller '"
     +theEvent.getName()+"': "
     +theEvent.getStringValue()
     );
     */
    // Send OSC message to MadMapper
    send(); // Can cheat coz only ui textfields relate to sending stuff
  }
}

public void clear() {
  cp5.get(Textfield.class, "oscAddress").clear();
  cp5.get(Textfield.class, "oscValues").clear();
}

public void send() {
  String oscAddRaw = cp5.get(Textfield.class, "oscAddress").getStringValue();
  String oscValRaw = cp5.get(Textfield.class, "oscValues").getStringValue();
  String oscAdd    = oscAddRaw.replaceAll("\\s", "");
  String[] oscStringVals = split(oscValRaw, " ");
  float[] oscVals = new float[oscStringVals.length];

  for(int i = 0; i < oscVals.length; i++)
  {
    oscVals[i] = tryParseFloat(oscStringVals[i]);
  }
  
  if(oscAdd == "")
  {
    println("Not sending address empty");
  }
  else
  {
    mediatorMessageTextarea.setText("sending " + oscAdd + " " + printFloatArray(oscVals) + "\n"
    + mediatorMessageTextarea.text());
    sendOsc(oscAdd, oscVals);
  }
}

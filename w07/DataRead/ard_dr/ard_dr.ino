// Read data from an analog pin and send it to processing
// via the serial port.

void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
}

void loop() {
  // read the input on analog pin 0:
  int sensorValue = analogRead(A0);
  // print out the value you read: scaled from 1023 to 255
  Serial.println(sensorValue/4);
  delay(5);        // delay in between reads for stability
}

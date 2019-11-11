// Read data from multiple analogs pin and send it to processing
// via the serial port. Uses a separator; like a comma ",".

void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
}

void loop() {
  // Pretend read the input on analog pin 0:
  int sensorValueA = random(1024);
  int sensorValueB = random(1024);
  // print out the value you read: scaled from 1023 to 255
  Serial.print(sensorValueA/4);
  Serial.print(",");
  Serial.println(sensorValueB/4);

  delay(50);        // delay in between reads for stability
}

int msg = 0; // msg or the "message" we are sending thru serial communication
int msgStep = 1;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  msg += msgStep;
  if (msg > 255) {
    msgStep = -1;
  }
  if (msg < 0) {
    msgStep = 1;
  }

  // with this code, we can see how msg changes over time
  // open "Tools -> Serial Plotter" or "Tools -> Serial Monitor"
  Serial.println(msg);
}

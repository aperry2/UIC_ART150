/*

  Reference the fritzing sketch in the same GitHub folder to create this circuit.

*/

int pwmPin = 3;
int fadeValue = 0;
int fadeStep = 2;

// the setup function runs once when you press reset or power the board
void setup() {
  pinMode(pwmPin, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  if (fadeValue >= 254) {
    fadeStep = -2;
  }
  if (fadeValue <= 2) {
    fadeStep = 2;
  }
  analogWrite(pwmPin, fadeValue);
  fadeValue = fadeValue + fadeStep;
  delay(40);
}

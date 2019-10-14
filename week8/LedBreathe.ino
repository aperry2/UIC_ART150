/*

  Reference the fritzing sketch in the same GitHub folder to create this circuit.

*/

int pwmPin = 3;
int ledPin = 2;
int fadeValue = 0;
int fadeStep = 2;

// the setup function runs once when you press reset or power the board
void setup() {
  pinMode(pwmPin, OUTPUT);
  pinMode(ledPin, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  // if the fadeValue is equal to or greater than 254
  if (fadeValue >= 254) {
    // turn on the digital LED
    digitalWrite(ledPin, HIGH);
    // change the fadeStep to -2
    fadeStep = -2;
  }

  // if the fadeValue is equal to or less than 2
  if (fadeValue <= 2) {
    // turn off the digital LED
    digitalWrite(ledPin, LOW);
    // change the fadeStep to 2
    fadeStep = 2;
  }
  
  analogWrite(pwmPin, fadeValue);
  fadeValue = fadeValue + fadeStep;
  delay(40); // wait 40 milliseconds for our human eyes to notice the change
}

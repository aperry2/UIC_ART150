/*

  Reference the fritzing sketch in the same GitHub folder to create this circuit.

*/

int pwmPin = 3;
int ledPin = 2;
int fadeValue = 0;

// the setup function runs once when you press reset or power the board
void setup() {
  pinMode(pwmPin, OUTPUT);
  pinMode(ledPin, OUTPUT);
  pinMode(LED_BUILTIN, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(LED_BUILTIN, HIGH);
  digitalWrite(ledPin, LOW);
  analogWrite(pwmPin, fadeValue);
  delay(500);
  fadeValue = fadeValue + 10;

  digitalWrite(LED_BUILTIN, LOW);
  digitalWrite(ledPin, HIGH);
  analogWrite(pwmPin, fadeValue);
  delay(500);
  fadeValue = fadeValue + 10;

  if (fadeValue > 255) {
    fadeValue = 0;
  }

}

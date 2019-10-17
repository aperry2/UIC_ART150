int onePin = 3; 
int twoPin = 5;
int threePin = 6;

// our analog input pin
int potPin = A0;

void setup() {
  // put your setup code here, to run once:

  // set up our 3 LEDs for output
  pinMode(onePin, OUTPUT);
  pinMode(twoPin, OUTPUT);
  pinMode(threePin, OUTPUT);

  // set up our one Potentiometer for input
  pinMode(potPin, INPUT);

  // set up our serial communication channel at a frequency of 9600
  Serial.begin(9600);
}

void loop() {
  // we grab a value from the potentiometer via the pin we set above
  int potVal = analogRead(potPin);

  // we let the computer do the math: what is a third of our max value?
  int third = 1023 / 3;

  // we initialize a mappedVal variable but will assign it in the conditional statement below
  int mappedVal;

  // here is our conditional case for the "bottom" third
  if (potVal < third) {
    mappedVal = map(potVal, 0, third, 0, 255);
    analogWrite(onePin, mappedVal);
    analogWrite(twoPin, 0);
    analogWrite(threePin, 0);

  // here is the conditional case for the "middle" third
  } else if (potVal < (third * 2) && potVal > third) {
    mappedVal = map(potVal, third, (third * 2), 0, 255);
    analogWrite(onePin, 255);
    analogWrite(twoPin, mappedVal);
    analogWrite(threePin, 0);

  // here is the conditional case for the "top" third
  } else if (potVal > (third * 2)) {
    mappedVal = map(potVal, (third * 2), (third * 3), 0, 255);
    analogWrite(onePin, 255);
    analogWrite(twoPin, 255);
    analogWrite(threePin, mappedVal);
  }

  Serial.print(mappedVal); // send our mappedVal value to the serial monitor/plotter
  Serial.print(","); // we separate our values with a comma so they appear in the plotter
  Serial.println(potVal); // send our potVal value to the serial monitor/plotter
}

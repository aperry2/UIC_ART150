int potLed = 3;
int photoLed = 5;
int pot = A1;
int photo = A0;

int potVal = 0;
int photoVal = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(potLed, OUTPUT);
  pinMode(photoLed, OUTPUT);
  pinMode(pot, INPUT);
  pinMode(photo, INPUT);

  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  potVal = analogRead(pot); // here we read the value returned by the potentiometer. It will be between 0 and 1023.
  
  photoVal = analogRead(photo); // here we read the value returned by the photoresistor. It will be between 0 and 1023 as well,
                                // but dependent on lighting conditions.

  int mappedPot = map(potVal, 0, 1023, 0, 255); // we use the map() function to map our 4-byte data (0-1023) to 1 byte (0-255).

  int mappedPhoto = map(photoVal, 140, 500, 0, 255); // we do the same, but we must figure out the "from" values depending on our
                                                    // lighting conditions

  mappedPhoto = 255 - mappedPhoto; // we subtract the mapped photo value from 255 to invert the signal

  if (mappedPhoto < 0) {
    mappedPhoto = 0; // if the mappedPhoto data is negative, we set it to 0 to avoid flickering
  } else if (mappedPhoto > 255) {
    mappedPhoto = 255;
  }

  // we write to our PWM-enabled pins
  analogWrite(potLed, mappedPot);
  analogWrite(photoLed, mappedPhoto);

  // we sent data to the serial monitor & plotter for debugging purposes
  Serial.print(mappedPot);
  Serial.print(",");
  Serial.print(potVal);
  Serial.print(",");
  Serial.print(mappedPhoto);
  Serial.print(",");
  Serial.println(photoVal);
}

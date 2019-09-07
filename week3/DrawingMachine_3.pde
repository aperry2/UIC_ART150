int counter = 0;
int speed = 10;
color ourColor = color(0, 0, 0);

void setup() {
  size(800, 800);
  strokeWeight(2);
  background(0, 0, 0);
}

void draw() {
  
  // this if statement checks to see if the counter variable 
  // has "caught up" to the speed variable
  
  // this if statement checks to see if the left mouse has been pressed
  if (mousePressed && (mouseButton == LEFT)) {

    // if it has been, we go into this for loop, which lasts for 3 cycles:
    // when i == -1, i == 0, and i == 1.
    for (int i = -1; i < 1; i++) {
      
      // we "load our pen" with color so the strokes of the line are the color we want 
      stroke(ourColor);
      
      // this loop generates 2 random numbers, one between 0 and 10, and the
      // other between 0 and 30, and multiplies each of them by 5.
      int shiftNumX = 5 * int(random(10));
      int shiftNumY = 5 * int(random(30));
      
      // this code draws a line between 2 points, created by using random numbers 
      // (shiftNumX) and (shiftNumY) and mulptiplying them by coordinates of the
      // center of the sketch, (height / 2) and (width / 2), and the mouse position
      line(shiftNumX + (height / 2), shiftNumY + (width / 2),
        shiftNumX + mouseX, shiftNumY + mouseY);
    }
  
  // this else-if case checks to see if the right mouse button has been pressed 
  } else if (mousePressed && (mouseButton == RIGHT)) {
    // if it has, we generate a new color
    ourColor = color(random(0, 50), random(200, 255), random(0, 50));
  } else {
    // a blank else case so the computer does nothing when neither mouse button is pressed
  }
  
  // if any key has been pressed, save the file as "imageXXXX.jpg" where XXXX is
  // the number returned by calling the millis() function, which is used as a
  // time stamp 
  if (keyPressed == true) {
    save("image" + millis() + ".jpg");
  }

}

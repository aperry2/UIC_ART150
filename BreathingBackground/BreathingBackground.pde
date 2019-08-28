int x = 0; // this line initializes an integer called x and stores the value "0" in it
int step = 1;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  background(x);
 
  // this block of code lets us see the values of the variables in the console
  println("x: " + x);
  println("step: " + step);
  println("===========");
  
  // this block of code changes the increment value to -1 or 1 depending on if the grayscale color is outside the range 0-255
  if (x >= 255) {
    step = -1;
  }
  if (x <= 0) {
    step = 1;
  }
  
  x = x + step;
}

int x = 0;
int step = 1;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  background(x);
  
  println("x: " + x);
  println("step: " + step);
  println("===========");
  
  if (x >= 255) {
    step = -1;
  }
  if (x <= 0) {
    step = 1;
  }
  
  x = x + step;
}

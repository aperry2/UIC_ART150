int time = 1;
int timeStep = 1;
int pixelsNearMouse = 100;
int lineCount = 50;

void setup() {
  size(1600, 900);
  background(0);
  frameRate(60); // this function changes the number of times the draw() function is called per second
}

void draw() {
  for (int i = 0; i < lineCount; i++) {
    stroke(0, time, time);
    int x1 = int(random(width));
    int y1 = int(random(height));
    int x2 = int(random(mouseX - pixelsNearMouse, mouseX + pixelsNearMouse));
    int y2 = int(random(mouseY - pixelsNearMouse, mouseY + pixelsNearMouse));
    line(x1, y1, x2, y2);
  }
  time = time + timeStep;
  
  println("time: " + time);
  
  if (time == 256) {
    timeStep = -1;
  }
  if (time == 0) {
    timeStep = 1;
  }
}

void keyPressed() {
  save("test" + millis() + ".png");
}

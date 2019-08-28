// variable initialization
int colorVar = 0;
int size = 40;

int stepColorVar = 1;
int stepSize = 1;

// setup function - runs once
void setup() {
  background(127, 127, 127); // color - Red, Blue, Green -> 0-255
  noStroke();
  size(512, 512); // width and height - like grid paper -> X, Y
}

// draw function - runs continuously
void draw() {
  fill(mouseX / 2, colorVar, mouseY / 2);
  for (int i = 0; i < 3; i++) {
    ellipse(mouseX + i * 100, mouseY + i, size, size);
  }
  
  // does the size need to reverse direction?
  if (size > 200) {
    stepSize = -1;
  }  
  if (size < 5) {
    stepSize = 1;
  }
  
  // does the Green color need to reverse direction?
  if (colorVar > 256) {
    stepColorVar = -1;
  }
  if (colorVar < 0) {
    stepColorVar = 1;
  }
  
  colorVar = colorVar + stepColorVar;
  size = size + stepSize;
}

// what happens when the mouse is clicked
void mouseClicked() {
  save("test.jpg");
  println("image saved!");
}

// we initialize our background color change variables
int fade = 255;
int fadeStep = -1;

// we set up the canvas
void setup() {
  size(1000, 1000);
  background(fade, 0, fade);
  strokeWeight(5);
}

void draw() {
  // every draw loop (60 times per second) we put down a new background
  background(fade, 0, fade);
  
  // we draw 30 rectangles
  for (int i = 1; i < 30; i++) {
    // we change the color depending on what loop we are on
    fill(0, i * 8, i * 8);
    // we change the y position depending on what loop we are on
    rect(40, i * 33, 920, 20);
  }
  
  // here, we check to make sure the fade variable is within our 0-255 range
  if(fade > 255) {
    fadeStep = -1;
  }
  if(fade <= 0) {
    fadeStep = 1;
  }
  
  // we change our fade variable, which will be either fade = fade + 1, or fade = fade + (-1)
  fade = fade + fadeStep;
}

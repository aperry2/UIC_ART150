int fade = 255;
int fadeStep = -1;

void setup() {
  size(1000, 1000);
  background(fade, 0, fade);
  strokeWeight(5);
}

// 100 / 30 = 16... ish
// 255 / 30 = 8... ish
void draw() {
  background(fade, 0, fade);
  
  for (int i = 1; i < 30; i++) {
    fill(0, i * 8, i * 8);
    rect(40, i * 33, 920, 20);
  }
  
  if(fade > 255) {
    fadeStep = -1;
  }
  if(fade <= 0) {
    fadeStep = 1;
  }
  
  fade = fade + fadeStep;
}

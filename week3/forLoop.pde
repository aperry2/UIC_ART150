void setup() {
  size(400, 400);
  background(10, 10, 10);
  noStroke();
}

void draw() {
  for (int i = 0; i < 29; i++) {
     fill(i * 10, 0, i * 10);
     rect(10 * i, 10 * i, 120, 120);
  }
  
  for (int i = 0; i < 29; i++) {
    fill(0, i * 10, i * 10);
    rect((width - 120) - (10 * i), 10 * i, 120, 120);
  }
}

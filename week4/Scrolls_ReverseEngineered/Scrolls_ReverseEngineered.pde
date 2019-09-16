int time = 0;
float rot = 0.0;

void setup() {
  size(600, 400);
  noFill();
  rectMode(CENTER);
  background(200);
  stroke(0);
}

void draw() {
  int size = mouseY;
  translate(time, height / 2);
  rotate(rot);
  rect(0, 0, size, size - 5);
  
  time++;
  if (time > width) {
    background(200);
    time = 0;
  }
  
  rot = rot + 0.03;
  if (rot > TWO_PI) {
    rot = 0.0;
  }
}

void mousePressed() {
  int r = int(random(255));
  int g = int(random(255));
  int b = int(random(255));
  stroke(r, g, b);
}

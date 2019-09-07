color skin = color(80, 200, 10);
color eyes = color(0, 0, 0);

void setup() {
  size(800, 800);
  background(40, 40, 80);
}

void draw() {
  drawHead();
  drawHead(mouseX, mouseY);
}

void drawHead() {
  fill(skin);
  ellipse(400, 400, 200, 400);
  fill(eyes);
  ellipse(340, 360, 80, 100);
  ellipse(460, 360, 80, 100);
}

void drawHead(int x, int y) {
  fill(skin);
  ellipse(x, y, 200, 400);
  fill(eyes);
  ellipse(x - 60, y - 40, 80, 100);
  ellipse(x + 60, y - 40, 80, 100);
}

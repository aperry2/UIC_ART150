color nose = color(250, 200, 200);
color eyes = color(20, 20, 120);
color skin = color(240, 180, 180);

void setup() {
  size(640, 480);
  background(0);
}

void draw() {
  placeFace();
}

void placeFace() {
  noStroke();
  int halfWidth = width / 2;
  int halfHeight = height / 2;
  // face
  fill(skin);
  ellipse(halfWidth, halfHeight, 200, 240);
  
  // eye whites
  fill(255);
  ellipse(halfWidth - 30, halfHeight - 30, 40, 40);
  ellipse(halfWidth + 30, halfHeight - 30, 40, 40);
  
  // pupils
  fill(eyes);
  ellipse(halfWidth - 30, halfHeight - 30, 20, 20);
  ellipse(halfWidth + 30, halfHeight - 30, 20, 20);
  
  // mouth
  stroke(1);
  line(halfWidth - 30, halfHeight + 30, halfWidth + 30, halfHeight + 30);
  noStroke();
  
  // nose
  fill(nose);
  triangle(halfWidth, halfHeight - 20, halfWidth - 20, halfHeight, halfWidth + 20, halfHeight);
}

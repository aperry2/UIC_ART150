PImage photo;
PImage clouds;

void setup() {
  size(1600, 900);
  background(0);
  photo = loadImage("corn.jpg");
  clouds = loadImage("cloud.png");
  frameRate(12);
}

void draw() {
  int randX = int(random(width / 2));
  int randY = int(random(height / 2));
  image(photo, 0, 0, width, height);
  
  image(clouds, mouseX, mouseY);
}

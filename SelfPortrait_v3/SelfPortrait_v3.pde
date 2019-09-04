int x;
int y;

color hair = color(116, 100, 11);
color skin = color(230, 234, 206);
color eyes = color(0, 0, 180);
color nose = color(255, 198, 255);
color eyeWhites = color(255);

PImage pasture;
PImage train;
PImage backgroundImage;

void setup() {
  size(800, 800);
  
  x = height / 2;
  y = width / 2;
  
  pasture = loadImage("pasture.jpg");
  train = loadImage("elTrain.jpg");
  
  backgroundImage = pasture;
  
  background(backgroundImage);
}

void draw() {
  background(backgroundImage);
  fill(hair);
  ellipse(x, y - 160, 200, 200);
  ellipse(x, y - 100, 200, 200);
    
  fill(skin);
  ellipse(x, y - 150, 180, 200);
  
  fill(hair);
  quad(x - 80, y - 100, x - 50, y - 120, x + 50, y - 120, x + 80, y - 100);
  
  fill(eyeWhites);
  ellipse(x - 40, y - 160, 40, 40);
  ellipse(x + 40, y - 160, 40, 40);
  
  fill(eyes);
  ellipse(x - 40, y - 160, 20, 20);
  ellipse(x + 40, y - 160, 20, 20);

  fill(nose);
  triangle(x, y - 160, x + 20, y - 120, x - 20, y - 120);
  
  println("mouseX: " + mouseX + ", mouseY: " + mouseY);
  println(x + ", " + y);
  
  if (mousePressed == true) {
    strokeWeight(5);
    x = x + int(random(-10, 10));
    y = y + int(random(-10, 10));
    eyeWhites = color(255, 0, 0);
    line(x - 60, y - 200, x - 20, y - 190);
    line(x + 60, y - 200, x + 20, y - 190);
    backgroundImage = train;    
    textSize(32);
    fill(255, 255, 0);
    text("no touching on the subway please", x - 300, y + 200);
  } else {
    strokeWeight(0);
    eyeWhites = color(255);
    backgroundImage = pasture;
  }
}

void keyPressed() {
  x = width / 2;
  y = height / 2;
}

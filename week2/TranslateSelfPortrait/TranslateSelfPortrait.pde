int x;
int y;

color hair = color(116, 100, 11);
color skin = color(230, 234, 206);
color eyes = color(0, 0, 180);
color eyeWhites = color(255);

void setup() {
  size(800, 800);
  background(255);
  noStroke();
  
  x = width / 2;
  y = height / 2;
}

void draw() {
  translate(x, y);
    fill(hair);
    ellipse(400, 240, 200, 200);
    
    ellipse(400, 300, 200, 200);
    
    fill(skin);
    ellipse(400, 250, 180, 200);
    
    fill(eyeWhites);
    ellipse(360, 240, 40, 40);
    ellipse(440, 240, 40, 40);
    
    fill(eyes);
    ellipse(360, 240, 20, 20);
    ellipse(440, 240, 20, 20);
  
  
  println("mouseX: " + mouseX + ", mouseY: " + mouseY);
}

void keyPressed() {
  x = x + int(random(-20, 20));
  y = y + int(random(-20, 20));
}

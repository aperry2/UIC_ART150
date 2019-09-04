// here we initialize our x and y variables
int x;
int y;

// here we create our palette of colors
color hair = color(116, 100, 11);
color skin = color(230, 234, 206);
color eyes = color(0, 0, 180);
color nose = color(255, 198, 255);
color eyeWhites = color(255);

PImage pasture; // this is our image object of the pasture
PImage train; // this is our image object of the train
PImage backgroundImage; // this will be the "variable object" which we will switch between our two other images

void setup() {
  size(800, 800);
  
  // here we set the x and y values as half of the height and width of the canvas
  x = height / 2; 
  y = width / 2;
  
  // we must load the image in setup
  pasture = loadImage("pasture.jpg");
  train = loadImage("elTrain.jpg");
  
  // here we load the pasture image, which was loaded into our pasture object above, into the backgroundImage object
  backgroundImage = pasture;
  
  // here we set the background as the backgroundImage, which has been edited to be precisely 800x800 pixels
  background(backgroundImage);
}

void draw() {
  background(backgroundImage);
  
  // here we draw the hair relative to x and y
  fill(hair);
  ellipse(x, y - 160, 200, 200);
  ellipse(x, y - 100, 200, 200);
  
  // here we do the same for the skin
  fill(skin);
  ellipse(x, y - 150, 180, 200);
  
  // and mustache - this time with a quad
  fill(hair);
  quad(x - 80, y - 100, x - 50, y - 120, x + 50, y - 120, x + 80, y - 100);
  
  // here we do the same for the whites of the eyes
  fill(eyeWhites);
  ellipse(x - 40, y - 160, 40, 40);
  ellipse(x + 40, y - 160, 40, 40);
  
  // and here we do the same for the iris color
  fill(eyes);
  ellipse(x - 40, y - 160, 20, 20);
  ellipse(x + 40, y - 160, 20, 20);

  // here we draw the nose
  fill(nose);
  triangle(x, y - 160, x + 20, y - 120, x - 20, y - 120);
  
  // we print off some data to console here so that we can understand things a little better
  println("mouseX: " + mouseX + ", mouseY: " + mouseY);
  println(x + ", " + y);
  
  // here we ask the computer to evaluate a statement. In English, it is asking if the mouse has been pressed
  if (mousePressed == true) {
    // we change the stroke
    strokeWeight(5);
    
    // we add a random whole (integer) number between -10 and 10 to x
    x = x + int(random(-10, 10));
    y = y + int(random(-10, 10));
    
    // we change the color of the whites of the eyes
    eyeWhites = color(255, 0, 0);
    
    // we draw the angry eyebrows relative to x and y
    line(x - 60, y - 200, x - 20, y - 190);
    line(x + 60, y - 200, x + 20, y - 190);
    
    // we change the background image to the train
    backgroundImage = train;    
    
    // we create yellow text relative to x and y
    textSize(32);
    fill(255, 255, 0);
    text("no touching on the subway please", x - 300, y + 200);
  } else {
    // if the mouse is not pressed (else)
    
    // we return our variables to "normal"
    strokeWeight(0);
    eyeWhites = color(255);
    backgroundImage = pasture;
  }
}

// if any key is pressed we return x and y to the "normal" values - this is an "event function"
void keyPressed() {
  x = width / 2;
  y = height / 2;
}

void setup() {
  size(600, 600);
  background(120, 200, 80);
}

void draw() {
  for (int i = 0; i < 3; i++) {
    // we translate, or change the 0,0 position of the grid, to a new position based on what iteration we are on in this for loop
    translate(i * 50, i * 100);
    
    // we also change the color
    fill(i * 100);
    
    // the x,y coordinates of this rectangle stay 50,50 - all changes are made thru translation
    rect(50, 50, 100, 100);
  }
}

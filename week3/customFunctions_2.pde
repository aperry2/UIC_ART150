color ourColor = color(0, 100, 100);

void setup() {
  size(600, 600);
  background(0);
}

void draw() {
  fill(ourColor);
  rect(40, 40, 200, 200);
  fill(addRed(ourColor));
  rect(340, 40, 200, 200);
}

color addRed(color oldColor) {
  color newColor;
  newColor = color(
     red(oldColor) + 100,
     green(oldColor),
     blue(oldColor)
  );
  println();
  println("== new color values ==");
  println("r: " + red(newColor));
  println("g: " + green(newColor));
  println("b: " + blue(newColor));
  return newColor;
}

PImage cereza;

void setup() {
  cereza = loadImage("cereza.jpg");
  background(0);
  size(800, 400);
  fill(200, 0, 50);
  circle(507, 273, 150);
  circle(657, 273, 150);
  strokeWeight(20);
  stroke(150, 200, 50);
  fill(0);
  beginShape();
  curveVertex(773, 12);
  curveVertex(582, 37);
  curveVertex(651, 210);
  curveVertex(500, 500);
  endShape();
  beginShape();
  curveVertex(537, 70);
  curveVertex(582, 37);
  curveVertex(516, 210);
  curveVertex(420, 90);
  endShape();
}

void draw () {
  println("mouseX");
  println(mouseX);
  println("mouseY");
  println(mouseY);
  image(cereza, 0, 0, 400, 400);
}

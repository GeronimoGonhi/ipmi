PImage inca;

void setup() {
  size(800, 400);
  inca = loadImage("inca.png");
}

void draw() {
  println("x: "+mouseX);
  println("y: "+mouseY);
  background(0);
  image (inca, 0, 0, 260, 400);
  noStroke();
  //primera capa
  fill(99, 147, 141);
  ellipse(379, 74, 75, 75);
  rect(379, 36, 150, 75.5);
  ellipse(527, 74, 75, 75);
  rect(341.5, 74, 223, 300);
  fill(111, 125, 118);
  triangle(416, 298, 416, 374, 357, 374);
  triangle(490, 298, 490, 374, 546, 374);
  fill(156, 201, 169);
  triangle(416, 298, 416, 368, 362, 368);
  triangle(490, 298, 490, 368, 542, 368);
  rect(426, 330, 55, 43);
  fill(111, 125, 118);
  ellipse(453, 300, 222, 80);
  fill(156, 201, 169);
  ellipse(453, 295, 222, 80);
  fill(99, 147, 141);
  rect(342, 244, 222, 54);
  //segunda capa
  fill(148, 188, 170);
  rect(341.5, 129, 223, 30);
  rect(438, 36, 30, 80);
  stroke(148, 188, 170);
  strokeWeight(20);
  line(454, 129, 341, 85);
  line(454, 129, 378, 36);
  line(454, 129, 528, 36);
  line(454, 129, 564, 85);
  stroke(111, 125, 118);
  strokeWeight(1);
  ellipse(453, 130, 75, 75);
  noStroke();
  ellipse(400, 250, 60, 55);
  ellipse(510, 250, 60, 55);
  rect(355, 177, 195, 50);
  fill(111, 125, 118);
  rect(415, 248, 75, 50);
  //tercera capa
  fill(111, 125, 118);
  ellipse(454, 247, 119, 100);
  fill(156, 201, 169);
  rect(395, 143, 118, 100);
  ellipse(454, 243, 118, 95);
  //cuarta capa
  fill(111, 125, 118);
  ellipse(425, 184, 60, 55);
  ellipse(483, 184, 60, 55);
  triangle(395, 177, 387, 177, 395, 244);
  triangle(513, 177, 520, 177, 513, 244);
  triangle(436, 232, 472, 232, 454, 265);
  fill(156, 201, 169);
  ellipse(425, 184, 35, 20);
  ellipse(483, 184, 35, 20);
  //quinta capa
  fill(156, 201, 169);
  triangle(454,191,425,221,485,221);
  fill(129, 167, 140);
  ellipse(454, 255, 60, 30);
  fill(111, 125, 118);
  rect(395, 143, 118, 40);
  fill(113, 173, 139);
  rect(387, 137, 133, 40);
  fill(156, 201, 169);
  rect(424, 255, 60, 15);
  rect(392, 168, 123, 9);
  rect(402, 143, 103, 30);
  triangle(392, 168, 402, 143, 402, 168);
  triangle(515, 168, 505, 143, 505, 168);
  triangle(442, 183, 465, 183, 454, 199);
  fill(113, 173, 139);
  triangle(454, 191, 436, 232, 472, 232);
  //capa para tapar cosas que se salen de los bordes
  fill(0);
  rect(308, 57, 34, 200);
  rect(564, 57, 34, 200);
  rect(341, 19, 250, 18.5);
}

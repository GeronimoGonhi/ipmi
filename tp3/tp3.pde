//https://www.youtube.com/watch?v=JVNuBGz4LPk
PImage yellowTemple;
float dis = 0;
float medio1 = 498.5;
float medio2 = 600.5;
float medio3 = 702;
int tamSq1 = 383;
int tamSq2 = 355;
int tamSq3 = 310;
int altRec1 = 101;
int altRec2 = 54;
int larRect1 = 380;
int larRect2 = 250;
int colorManager = 1;
color colorActual = color(255, 222, 1);

void setup() {
  frameRate(10);
  size(800, 400);
  yellowTemple = loadImage("tumblr.jpg");
}

void draw() {
  background(148, 146, 204);
  fill(35, 45, 30);
  square(600, height/2, 387);
  println("X: "+mouseX);
  println("Y: "+mouseY);
  rectMode(CENTER);
  image(yellowTemple, 0, 0, 400, height);
  obra();
  distancia();
  colores();
}
void obra() {
  rectMode(CENTER);
  for (int i = tamSq2; i<tamSq1; i+=4) {
    for (int j = tamSq3; j<tamSq2; j+=8) {
      fill(0, 0);
      square(600, height/2, i);
      square(600, height/2, j);
    }
  }
  noStroke();
  fill(35, 45, 30);
  rect(medio1, height/2, 95, 305);
  rect(medio2, height/2, 95, 305);
  rect(medio3, height/2, 95, 305);
  for (int i=altRec2, j=larRect2; i<altRec1 && j< larRect1; i+=6, j+=8) {
    for (int l= 25, t =215; l < altRec2 && t< larRect2; l +=4, t+=4) {
      stroke(colorActual);
      fill(0, 0);
      rect(medio1, height/2, i, j);
      rect(medio1, height/2, l, t);
      fill(colorActual);
      rect(medio1, height/2, 20, 215);
      fill(0, 0);
      rect(medio2, height/2, i, j);
      rect(medio2, height/2, l, t);
      fill(colorActual);
      rect(medio2, height/2, 20, 215);
      fill(0, 0);
      rect(medio3, height/2, i, j);
      rect(medio3, height/2, l, t);
      fill(colorActual);
      rect(medio3, height/2, 20, 215);
    }
  }
}
void distancia() {
  if (mouseX > 400) {
    dis = dist(mouseX, mouseY, 600, height/2);
    float desplazamiento = map(dis, 295, 450, 50, 100);
    println("distancia: "+medio1);
    if (mousePressed) {
      medio1=498.5+desplazamiento;
      medio3=702.5;
      medio3=702.5-desplazamiento;
    } else {
      medio1=498.5;
      medio3=702.5;
      medio3=702.5;
    }
  } else {
    println("estás fuera del limite");
  }
}

void colores() {
  if (colorManager == 1) {
    colorActual = color(255, 222, 1);
  } else if (colorManager == 2) {
    colorActual = color(255, 0, 0);
  } else if (colorManager == 3) {
    colorActual = color(0, 255, 222);
  } else if (colorManager == 4) {
    colorActual = color(255, 100, 50);
  } else if (colorManager == 5) {
    colorActual = color(0, 255, 0);
  } else if (colorManager == 6) {
    colorActual = color(random(0255), random(0, 255), random(0, 255));
  }
}
void keyReleased() {
  if (key==' ') {
    colorManager +=1;
    if (colorManager>6) {
      colorManager =6;
    }
  }if (key=='r') {
    colorManager =1;
  }
}

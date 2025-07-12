//https://www.youtube.com/watch?v=jcqlLgYOKUg
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
  float valorDevuelto = calcularDistancia(600, height/2);
  movimiento(valorDevuelto);
  colores();
}

void obra() {
  cuadrados();

  noStroke();
  fill(35, 45, 30);
  rect(medio1, height/2, 95, 305);
  rect(medio2, height/2, 95, 305);
  rect(medio3, height/2, 95, 305);

  rectangulos(medio1);
  rectangulos(medio2);
  rectangulos(medio3);
}

void cuadrados() {
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
}

void rectangulos(float medio) {
  for (int i = altRec2, j = larRect2; i < altRec1 && j < larRect1; i += 6, j += 8) {
    for (int l = 25, t = 215; l < altRec2 && t < larRect2; l += 4, t += 4) {
      stroke(colorActual);
      fill(0, 0);
      rect(medio, height/2, i, j);
      rect(medio, height/2, l, t);

      fill(colorActual);
      rect(medio, height/2, 20, 215);
    }
  }
}

float calcularDistancia(float centroX, float centroY) {
  float dis = dist(mouseX, mouseY, centroX, centroY);
  float desplazamiento = map(dis, 295, 450, 50, 100);
  return desplazamiento;
}

void movimiento(float valorMovimiento) {
  if (mouseX > 400) {
    if (mousePressed) {
      medio1 = 498.5 + valorMovimiento;
      medio3 = 702.5 - valorMovimiento;
    } else {
      medio1 = 498.5;
      medio3 = 702.5;
    }
  } else {
    medio1 = 498.5;
    medio3 = 702.5;
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
    colorActual = color(138, 43, 226);
  } else if (colorManager == 7) {
    colorActual = color(255, 105, 180);
  } else if (colorManager == 8) {
    colorActual = color(0, 128, 255);
  } else if (colorManager == 9) {
    colorActual = color(255, 165, 0);
  } else if (colorManager == 10) {
    colorActual = color(200, 0, 130);
  } else if (colorManager == 11) {
    colorActual = color(0, 255, 127);
  } else if (colorManager == 12) {
    colorActual = color(220, 20, 60);
  }
}


void keyReleased() {
  if (key==' ') {
    colorManager +=1;
    if (colorManager>12) {
      colorManager =12;
    }
  }
}
  void mouseClicked() {
    if (mouseX>0 && mouseX< 400) {
      colorManager =1;
    }
  }

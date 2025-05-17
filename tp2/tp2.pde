int timer;
int tick;
int pantalla;
String txtPausa;
boolean pausa;
PImage foto;
PFont txtFont;

void setup() {
  size(640, 480);
  //declaracion de variables
  txtFont= loadFont("JavaneseText-15.vlw");
  textFont(txtFont);
  textSize(5);
  timer = 0;
  tick = 0;
  pantalla = 0;
  txtPausa = "pausa";
  pausa = true;
}

void draw() {
  foto = loadImage("pantalla"+pantalla+".png");
  image(foto, 0, 0);
  fill(255, 255, 255, 100);
  textSize(25);
  text("timer: "+timer, 0, 20);
  text("tick: "+tick, 0, 40);
  text("pantalla: "+pantalla, 0, 60);
  fill(225);
  pantallas();
  if (timer == 200) {
    tick +=1;
    timer= 0;
  }
  if (tick == 3) {
    pantalla +=1;
    tick=0;
    txtSpeed= 0.5;
    txtMovement= 0;
  }
  if (pantalla >11) {
    pantalla = 0;
    txtSpeed= 0.5;
    txtMovement= 0;
  }
  if (pausa == false) {
    timer += 1 ;
  } else if (pausa == true && pantalla >= 1 && pantalla <= 10) {
    fill(255, 0, 0, 50);
    rect(250, height/2, 150, 50);
    fill(0);
    text("en pausa", 280, 270);
  }
}




void keyReleased() {
  if (pantalla >= 1 && pantalla <= 10) {
    if (key ==' ' && pausa == false) {
      pausa= true;
    } else if (key ==' ' && pausa == true) {
      pausa= false;
    }
  }
  if (key == 'r'&& pantalla >= 1 && pantalla <= 10 || key == 'R' && pantalla >= 1 && pantalla <= 10) {
    timer = 0;
    tick = 0;
    pantalla = pantalla+1;
    txtSpeed= 0.5;
    txtMovement= 0;
  } else if (key == 'e'&& pantalla >= 2 && pantalla <= 10 || key == 'E' && pantalla >= 2 && pantalla <= 10) {
    timer = 0;
    tick = 0;
    pantalla = pantalla-1;
    txtSpeed= 0.5;
    txtMovement= 0;
  }
}

void mouseReleased() {
  if (pantalla == 0 && mouseX > 250 && mouseX <400 && mouseY >240 && mouseY <290) {
    pantalla = 1;
    pausa = false;
  }
  if (pantalla == 11 && mouseX > 250 && mouseX <400 && mouseY >240 && mouseY <290) {
    timer = 0;
    tick = 0;
    pantalla = 0;
  }
}

String  txtPantalla1 ="Lain Iwakura es una adolescente tímida y reservada que\nvive con su familia en un suburbio japonés. Su vida parece\ncomún, hasta que una compañera de clase se suicida.";
String  txtPantalla2 ="Poco después, Lain recibe un extraño correo electrónico\nenviado por la compañera fallecida, que afirma estar viva\ndentro de la red conocida como The Wired.";
String  txtPantalla3 ="Intrigada, Lain comienza a explorar el Wired y\nse ve envuelta en un mundo donde\nla realidad y la virtualidad se entremezclan.";
String  txtPantalla4 ="A medida que se adentra más, Lain experimenta cambios en\nsu personalidad y percepción, volviéndose cada vez más\nenigmática y distante.";
String  txtPantalla5 ="Descubre que hay múltiples versiones de sí misma en el\nWired, y comienza a cuestionar qué parte de ella es real\ny cuál es una construcción digital.";
String  txtPantalla6 ="Organizaciones secretas y figuras misteriosas la observan,\nconvencidos de que Lain posee habilidades extraordinarias\nque podrían alterar la red.";
String  txtPantalla7 ="Lain se enfrenta a conceptos complejos como la identidad,\nla conciencia colectiva y la existencia de Dios en un mundo\ncada vez más conectado.";
String  txtPantalla8 ="A lo largo de su viaje, su familia muestra comportamientos\ncada vez más extraños, y Lain se siente aislada incluso\nen su propio hogar.";
String  txtPantalla9 ="Mientras los límites entre el mundo físico y el Wired se\ndesdibujan, Lain debe tomar decisiones que afectarán a\ntoda la humanidad.";
String  txtPantalla10 ="Serial Experiments Lain es una obra críptica y filosófica\nque explora la tecnología, la soledad y la naturaleza de\nla realidad en la era digital.";
float txtMovement = 0;
float txtSpeed= 0.5;

void pantallas() {
  if (pantalla == 0) {
    fill(255, 0, 0, 50);
    rect(250, height/2, 150, 50);
    fill(0);
    text("empezar", 280, 270);
  } else if (pantalla == 1) {
    text(txtPantalla1, 7+txtMovement, 338);
  } else if (pantalla == 2) {
    text(txtPantalla2, 120+txtMovement, 338);
  } else if (pantalla == 3) {
    text(txtPantalla3, 7, 338+txtMovement);
  } else if (pantalla == 4) {
    text(txtPantalla4, 7, 200+txtMovement);
  } else if (pantalla == 5) {
    fill(225, 225, 225, 225+txtMovement);
    text(txtPantalla5, 7, 338);
  } else if (pantalla == 6) {
    fill(100, 0, 20, 0+txtMovement);
    text(txtPantalla6, 7, 338);
  } else if (pantalla == 7) {
    text(txtPantalla7, 7, 200+txtMovement);
  } else if (pantalla == 8) {
    fill(10, 0, 150);
    text(txtPantalla8, 7, 338+txtMovement);
  } else if (pantalla == 9) {
    text(txtPantalla9, 120+txtMovement, 338);
  } else if (pantalla == 10) {
    text(txtPantalla10, 7+txtMovement, 338);
  } else if (pantalla == 11) {
    pausa = true;
    fill(255, 0, 0, 50);
    rect(244, height/2, 160, 50);
    fill(0);
    text("volver al inicio", 250, 270);
  }
  movimientos();
}

void movimientos() {
  if (pantalla == 1 && pausa == false) {
    txtMovement += txtSpeed;
  } else if (pantalla == 2 && pausa == false) {
    txtMovement -= txtSpeed*2;
  } else if (pantalla == 3 && pausa == false) {
    txtMovement  -= txtSpeed/2;
  } else if (pantalla == 4 && pausa == false) {
    txtMovement  += txtSpeed;
  } else if (pantalla == 5 && pausa == false) {
    txtMovement -= 0.5;
  } else if (pantalla == 6 && pausa == false) {
    txtMovement += 1;
  } else if (pantalla == 7 && pausa == false) {
    txtMovement  += txtSpeed;
  } else if (pantalla == 8 && pausa == false) {
    txtMovement  -= txtSpeed/2;
  } else if (pantalla == 9 && pausa == false) {
    txtMovement -= txtSpeed*2;
  } else if (pantalla == 10 && pausa == false) {
    txtMovement += txtSpeed;
  }
}

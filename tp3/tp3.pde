//Rocío Amaya, legajo : 118957/6
//comision 2
//youtube: https://youtu.be/QsZz6VVXIEk

PImage foto;

void setup() {
  size(800, 400);
  background(0);
  foto = loadImage("foto.jpg");
}

void draw() {
  background(0);
  grillas ( 30, 30 );
  image(foto, -47, 0, 447, 400);
  cambioDeColor();
}

void keyPressed() {
  if (key == '+') {
    tam = tamano(tam, 1);
  } else if (key == '-') {
    tam = tamano(tam, -1);
  } else if (key == 'r') {
    reinicio();
  }
}

void mousePressed() {
  cambioBoolean ();
}

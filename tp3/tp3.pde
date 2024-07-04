//Rocío Amaya, legajo : 118957/6
//comision 2
//youtube: https://youtu.be/iSlV7E1Bw3g

PImage foto;

void setup() {
  size(800, 400);
  background(0);
  foto = loadImage("foto.jpg");
}

void draw() {
  background(0);
  grillas ();
  image(foto, -47, 0, 447, 400);
  cambioDeColor();
}

void keyPressed() {
  if (key == '+') {
    teclaMas ();
  } else if (key == '-') {
    teclaMenos ();
  } else if (key == 'r') {
    reinicio();
  }
}

void mousePressed() {
  cambioDeColores ();
}

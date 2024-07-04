int tam = 51;
int filas = 30;
int columnas = 30;
int espacio = 15;
color colorBlanco = color(255);
int tiempoDeColor = 0;
boolean cambioDeColor = false;

void grillas () {
  //repetición de las filas
  for (int y = 0; y < filas; y++) {
    //espacio en X de cada cuadrado
    int mov;
    if ((y / 2) % 2 == 0) {
      mov = (y % 2) * espacio;
    } else {
      mov = espacio * (2 - (y % 2));
    }
    //println (tam);
    for (int i = 0; i < columnas; i++) {
      int posX = mouseX / 2 + i * tam + mov;
      int posY = y * tam;

      strokeWeight(3);
      stroke(130, 130, 130);

      if (i % 2 == 0) {
        if (cambioDeColor) {
          fill(colorBlanco);
        } else {
          fill(255);
        }
      } else {
        fill(0);
      }

      rect(posX, posY, tam, tam);
    }
  }
}




void cambioDeColor() {
  if (cambioDeColor && frameCount - tiempoDeColor >= 15) {
    colorBlanco = color(random(100, 255), random(100, 255), random(100, 255));
    tiempoDeColor = frameCount;
  }
}


void teclaMas () {
  if (tam < 57) {
    tam ++;
  }
}
void teclaMenos () {
  if (tam>27);
  {
    tam--;
  }
}

void reinicio() {
  tam = 51;
  filas = 30;
  columnas = 30;
  colorBlanco = color(255);
  cambioDeColor = false;
}


void cambioDeColores () {
  if (cambioDeColor) {
    cambioDeColor = false;
    colorBlanco = color (255);
  }else {
  cambioDeColor = true;
  tiempoDeColor = frameCount;
  }
}

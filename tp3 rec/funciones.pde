int tam = 51;
int espacio = 15;
color colorBlanco = color(255);
int tiempoDeColor = 0;
int mov ;
boolean cambioDeColor = false;

void grillas (int filas, int columnas) {
  //repetición de las filas
  for (int y = 0; y < filas; y++) {
    //espacio en X de cada cuadrado
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


int tamano (int tamanoActual, int aumento) {
  int nuevoTamano = tamanoActual + aumento;
  if (nuevoTamano > 57) {
    nuevoTamano = 57;
  } else if (nuevoTamano < 27) {
    nuevoTamano = 27;
  }
  return nuevoTamano;
}

void reinicio() {
  tam = 51;
  colorBlanco = color(255);
  cambioDeColor = false;
}


void cambioBoolean () {
  if (cambioDeColor) {
    cambioDeColor = false;
    colorBlanco = color(255);
  } else {
    cambioDeColor = true;
    tiempoDeColor = frameCount;
  }
}

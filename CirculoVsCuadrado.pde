Jugador jugador; // Circulo
Enemigo enemigo; // Cuadrado

void setup() {
  size(400, 400);
  jugador = new Jugador(width/2, 300, 40, 5);
  enemigo = new Enemigo(width/2, height/2, 60, jugador);
}

void draw() {
  background(0);
  jugador.dibujar();
  enemigo.dibujar();

  // Colision
  float distancia = dist(jugador.getPos().x, jugador.getPos().y, enemigo.getPos().x, enemigo.getPos().y);
  if (distancia < jugador.getR()/2 + enemigo.getTam()/2 + 30) {
    enemigo.escapar();
  }
 
  // Cambio de color
  float maxDist = 400; // distancia maxima en la que afecta el cambio de color
  float t = constrain(distancia / maxDist, 0, 1);

  color c1 = color(0, 255, 0); // Verde
  color c2 = color(255, 0, 0); // Rojo

  enemigo.setColor(lerpColor(c1, c2, 1 - t));
}

void keyPressed() {
  jugador.mover(keyCode);
}

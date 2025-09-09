Jugador jugador; // Circulo
Enemigo enemigo; // Cuadrado

void setup() {
  size(400, 400);
  jugador = new Jugador(width/2, 300, 40, 5);
  enemigo = new Enemigo(width/2, height/2, 60);
}

void draw() {
  background(0);
  jugador.dibujar();
  enemigo.dibujar();
}

void keyPressed() {
  jugador.mover(keyCode);
}

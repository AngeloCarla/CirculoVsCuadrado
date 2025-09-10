class Jugador {
  private PVector pos;
  private int vel;
  private int r;

  public Jugador(int x, int y, int r, int vel) {
    this.pos = new PVector(x, y);
    this.r = r;
    this.vel = vel;
  }

  public void dibujar() {
    fill(255);
    noStroke();
    ellipse(pos.x, pos.y, r, r);
  }

  void mover(int keyCode) {

    // Movimiento
    switch(keyCode) {
    case UP:
    case 'W':
      pos.y -= vel;
      break;
    case DOWN:
    case 'S':
      pos.y += vel;
      break;
    case LEFT:
    case 'A':
      pos.x -= vel;
      break;
    case RIGHT:
    case 'D':
      pos.x += vel;
      break;
    }

    // Limites
    float radio = r / 2.0;
    pos.x = constrain(pos.x, radio, width - radio);
    pos.y = constrain(pos.y, radio, height - radio);
  }

  public PVector getPos() {
    return pos;
  }

  public int getR() {
    return r;
  }
}

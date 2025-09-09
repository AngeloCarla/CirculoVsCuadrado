class Jugador{
  private int x, y, r;

  public Jugador(int x, int y, int r) {
    this.x = x;
    this.y = y;
    this.r = r;
  }

  public void dibujar() {
    fill(255);
    noStroke();
    ellipse(x, y, r, r);
  }
}

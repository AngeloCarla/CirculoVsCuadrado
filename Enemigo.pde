class Enemigo {
  private int x, y, size;

  public Enemigo(int x, int y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  public void dibujar() {
    fill(180, 180, 180);
    noStroke();
    rectMode(CENTER);
    rect(x, y, size, size);
  }
}

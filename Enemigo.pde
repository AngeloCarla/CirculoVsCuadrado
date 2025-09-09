class Enemigo {
  private float x, y;
  private int size;

  public Enemigo(float x, float y, int size) {
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

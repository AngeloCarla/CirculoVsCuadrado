class Enemigo {
  private PVector pos;
  private int tam;
  private int c;

  public Enemigo(float x, float y, int tam) {
    this.pos = new PVector(x, y);
    this.tam = tam;
    this.c = color(255);
  }

  public void dibujar() {
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(pos.x, pos.y, tam, tam);
  }

  public void escapar() {
    pos.x = random(tam/2, width - tam/2);
    pos.y = random(tam/2, height - tam/2);
  }

  public void setColor(int nuevoColor) {
    this.c = nuevoColor;
  }

  public PVector getPos() {
    return pos;
  }

  public int getTam() {
    return tam;
  }
}

class Enemigo {
  private PVector pos;
  private int tam;
  private int c;
  private Jugador j;

  public Enemigo(float x, float y, int tam, Jugador j) {
    this.pos = new PVector(x, y);
    this.tam = tam;
    this.c = color(255);
    this.j = j;
  }

  public void dibujar() {
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(pos.x, pos.y, tam, tam);
  }

  public void escapar() {

    // Movimiento
    PVector dir = PVector.sub(pos, j.getPos());
    dir.normalize();
    dir.mult(20); // distancia a moverse
    pos.add(dir);

    // Limite
    float mitad = tam / 2.0;
    pos.x = constrain(pos.x, mitad, width - mitad);
    pos.y = constrain(pos.y, mitad, height - mitad);
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

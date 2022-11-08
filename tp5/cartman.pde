class Cartman{
  PImage personaje = loadImage("cartman.png");
  int posX = 200;
  Fondo fondo = new Fondo();
  void dibujo(){
    image(personaje, posX, 500, 80,80);
  }
  
  void moverIzq(){
    this.posX = this.posX - 6;
    this.dibujo();
  }
  
  void moverDer(){
    this.posX = this.posX + 6;
    this.dibujo();
  }
  
  public int getPos(){
    return this.posX;
  }
  
}

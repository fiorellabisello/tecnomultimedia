class Verduras {
  float x = 600;  
  float y = 6;
  int tam=50;
  Fondo fondo = new Fondo();
  PImage verduras;
  int cantVerduras = 0;
  Verduras() {
    verduras = loadImage("verduras.jpg");
  }
  
  void dibujo() {
    caida();
  }
  
  void caida() {
    fondo.actualizarFondo();
    y+=6;
    image(verduras,x,y,40,40);
    if(y > height){
       x= random(400);
       y= random(-100);
  }
  }
  
}

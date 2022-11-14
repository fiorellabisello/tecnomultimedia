Juego juego;

void setup(){
  size (600,600);  
  juego = new Juego();
  Fondo fondo = new Fondo();
  fondo.actualizarFondo();
}

void draw(){
  juego.dibujo();
}

void keyPressed(){
  juego.keyPressed();
}

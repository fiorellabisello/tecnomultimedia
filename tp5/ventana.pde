class Juego{

  Cartman personaje1 = new Cartman();
  Verduras verdura1 = new Verduras();
  int escenario = 0;
  int tiempo;
  Fondo fondo = new Fondo();
  
  void actualizar(){
  //LOGICA DE ESTADOS 
    if (escenario == 0){inicio();}
    if (escenario == 1){instrucciones();}
    if (escenario == 2){jugar();}
    if (escenario == 3){perdiste();}
    if (escenario == 4){ganaste();}
   }
   
  /*void colisiones(){
    //aca irian las colisiones
  }*/
  
  void inicio() {
    escenario = 0;
    textAlign(CENTER);
    fill(0);
    fondo.actualizarFondo();
    text("J = Jugar", height/2, 220);
    text("I = Instrucciones", height/2, width/2);
  }
  
  void instrucciones() {
    escenario = 1;
    background(0);
    textAlign(CENTER);
    fondo.actualizarFondo();
    text("Esquivar las verduras!", height/2, 220);
    text("Tenes 5 vidas!", height/2, 235);
    text("Movimiento: a/d == <-/->", height/2, width/2);
    text("J = Jugar", height/2, 270);
  }

  void perdiste() {
    escenario = 3;
    textAlign(CENTER);
    text("PERDISTE", height/2, width/2);
    text("Apretar 'm' para volver", height/2, 270);
  }

  void ganaste(){
    textAlign(CENTER);
    text("GANASTE", height/2, width/2);
    text("Apretar 'm' para volver", height/2, 270);
  }

  void keyPressed() {
    if (escenario == 0) {
      if (key == 'i' || key == 'I') {
        instrucciones();
      }
      if (key == 'j' || key == 'J')
        jugar();
        fondo.actualizarFondo();
    } 
    if (escenario == 1) {
      if (key == 'j' || key == 'J') 
        jugar();
        fondo.actualizarFondo();
   }
   if (escenario == 2) {
     frameCount = + 0;
        if(frameCount%60==0) {
        tiempo ++; 
        }
           if(tiempo <= 30){
            perdiste ();
          }
    if (key == 'a' || keyCode == LEFT) {
      if(personaje1.getPos() >= 0) 
        personaje1.moverIzq();
    }
    if (key == 'd' || keyCode == RIGHT) {
      if(personaje1.getPos() <= 450) 
        personaje1.moverDer();
    }
   }
  }
  void jugar(){
    escenario = 2;
    verdura1.dibujo();
    personaje1.dibujo();
  }
  
  void dibujo(){
    actualizar();
  }
}

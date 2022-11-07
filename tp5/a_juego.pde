/*
//class Juego{
//Cartman personaje1;
//Verduras verdura1;
// escenario=0;

// Juego(){
//personaje1= new Cartman();
//verdura1= new Verduras();
//}
//void actualizar(){
//LOGICA DE ESTADOS 
// if (escenario == 0){inicio();}
//if (escenario == 1){instrucciones();}
//if (escenario == 2){jugar();}
//if (escenario == 3){final();}
//}
void colisiones(){
  aca irian las colisiones
//}
void inicio() {
  escenario = 0;
  reiniciar();
  background(0);
  textAlign(CENTER);
  fill(255);
  text("J = Jugar", height/2, 220);
  text("I = Instrucciones", height/2, width/2);
}
void instrucciones() {
  escenario = 1;
  background(0);
  textAlign(CENTER);
  text("Esquivar las verduras!", height/2, 220);
  text("Tenes 5 vidas!", height/2, 235);
  text("Movimiento: a/d == <-/->", height/2, width/2);
  text("J = Jugar", height/2, 270);
}
void final() {
  escenario = 3;
  textAlign(CENTER);
  text("PERDISTE", height/2, width/2);
  text("Apretar 'm' para volver", height/2, 270);
}
void keyPressed() {
  if (escenario == 0) {
    if (key == 'i' || key == 'I') {
      instrucciones();
    }
    if (key == 'j' || key == 'J') {
      juegar();
    }
 }
 if (escenario == 1) {
   if (key == 'j' || key == 'J') {
     jugar();
   }
 }
 if (escenario == 2) {
  if (key == 'a' || keyCode == LEFT) {
    if(posX >= 0) {
    posX -= 7;
  }
  }
  if (key == 'd' || keyCode == RIGHT) {
    if(posX <= 450) {
    posY += 7;
  }
  }
 }
*/

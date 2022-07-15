//Escenario 0
void inicio(int rojo) {
  image(verde, 0, 0, 400, 400);
  fill(rojo);
  textFont(gamefont, 30);
  text("ATRAPA \n LAS MARIPOSAS!", 200, 150);
  textFont(gamefont2, 30);
  fill(cJugar);
  text("VAMOS A JUGAR!", 200, 250);
  fill(cIns);
  circle (385, 12, 20);
  textFont(gamefont2, 10);
  fill(0);
  text("?", 385, 7);
  cJugar = color(167, 2, 16);
  cIns = color(167, 2, 16);
  if (mouseX>140 && mouseX<258 && mouseY>246 && mouseY<276) {
    cJugar = color(230, 255, 0);
  }
  if (mouseX>375 && mouseX<395 && mouseY>3 && mouseY<22) {
    cIns = color(230, 255, 0);
  }
  if (empezar == true ) {
    escenario = 2;
  }else if (creditos == true ) {
    escenario = 1;
  }
}

//Escenario 1
void creditos(){
  for (int i=0; i<8; i++) {
    for (int j=0; j<8; j++) {
      if ((i+j)%2==0) {
        fill(#D6FFD6);
      } else {
        fill(#FFE8FA);
      }
      rect(j*50, i*50, 50, 50);
    }
  }
  fill (255);
  textSize(30);
  fill (280, 0, 0);
  textSize(25);
  text ("HECHO POR", texto, posY); 
  posY--;
  fill (40);
  textSize (30);
  text ("Bisello Fiorella", texto, posY2);
  posY2--;
}

// Escenario 2
void instrucciones(){
  image(verde, 0, 0, 400, 400);
  textFont(gamefont, 18);
  text("ATRAPA 5 MARIPOSAS \n ANTES DEL TIEMPO", 200, 150);
  textFont(gamefont2, 15);
  fill(cIns);
  text("Presioná J para jugar", 200, 300);
  keyPressed();
  if (jugar == true){
    escenario = 3;
  }
}

//Escenario 3
void caida() {
  image(verde, 0, 0, 400, 400);
  image(Red, mouseX, mouseY,150,150);
  y+=6;
  image(maripocita,x,y,40,40);
  if(y > height){
     x= random(400);
     y= random(-100);
  }
}
  
//ESCENARIO 4 o 5
void inicioFin() {
   if (contador == 5) {
      escenario = 4;
    }else if (contPerdidas > 8) {
      escenario = 5;
  }
}

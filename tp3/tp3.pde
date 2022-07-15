// Bisello Fiorella 
// 91424/3
int posY, posY2;
int escenario;
int cant = 2;
int texto = 200;
int nMariposa = 5;
int contador = 0;
int contPerdidas = 0;
int posiciones[]=new int [8];

float x = random (400);
float y = random (height);
float posX1;

boolean empezar = false;
boolean creditos = false;
boolean instrucciones = false;
boolean jugar = false;

PFont gamefont, gamefont2;
PImage maripocita, Red, verde;
color cJugar, cIns;

void setup() {
  size(400, 400);

  textAlign(CENTER, CENTER);
  gamefont = createFont("Cute Notes.ttf", 32);
  gamefont2 = createFont("earwig factory rg.ttf", 32);
  cJugar = color(0);
  cIns = color(0);
  
  posY=430;
  posY2=460;

posiciones[0]=140;
  posiciones[1]=258;
  posiciones[2]=246;
  posiciones[3]=276;
  posiciones[4]=375;
  posiciones[5]=395;
  posiciones[6]=3;
  posiciones[7]=22;

  maripocita = loadImage("maripocita.png");
  Red = loadImage("Red.png");
  verde = loadImage("verde.jpg");
  noStroke();
}

void draw () {
  println("x", mouseX);
  println("y", mouseY);
  escenario = 0;
  if (escenario == 0) {
    inicio(#A70210);
  }
  if (escenario == 1) {
    creditos();
  }
  if (escenario == 2) {
    instrucciones();
  }
  if (escenario == 3) {     
    
     caida();
     puntaje();
     colision(); 
     inicioFin();
  }
  if (escenario == 4) {
   image(verde, 0, 0, 400, 400);
    textFont (gamefont, 20);
    text ("GANASTE! \n presioná R \n para volver al inicio", 200, 200);
  }
  if (escenario == 5) {
    image(verde, 0, 0, 400, 400);
    textFont(gamefont, 20);
    text("PERDISTE! \n presioná R \n para volver al inicio", 200, 200);
  }
}
void mouseClicked() {
  if (mouseX>posiciones[0] && mouseX<posiciones[1] && mouseY>posiciones[2] && mouseY<posiciones[3]) {
    empezar = true;
  }else  if (mouseX>posiciones[4] && mouseX< posiciones[5] && mouseY>posiciones[6] && mouseY<posiciones[7]) {
    creditos = true;
  }
}

void reiniciar() {
            cant = 2;
            texto = 200;
            nMariposa = 5;
            contador = 0;
            contPerdidas = 0;   
            escenario = 3;
            posY=430;
            posY2=460;
            posiciones[0]=140;
            posiciones[1]=258;
            posiciones[2]=246;
            posiciones[3]=276;
            posiciones[4]=375;
            posiciones[5]=395;
            posiciones[6]=3;
            posiciones[7]=22;
            empezar = false;
            creditos = false;
            instrucciones = false;
            jugar = false;
}

void keyPressed() {
  if (escenario == 2 || escenario == 4 || escenario == 5) {
    if (key == 'J' || key == 'j') {
      jugar = true;
    }
  }
   if (escenario == 3 || escenario == 4 || escenario == 5 && (key == 'r' || key == 'R')) {
      reiniciar();
    }
}

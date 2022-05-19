PImage imagenpaisaje;
PImage vector;
PImage elizabeth;
PImage darcy;
PImage todos;

PFont font;
int textX = 321;
int posY = 10;
int posY2 = -145;
int posY3 = 0;
int posY4 = 0;
int posY5 = 0;
int posY6 = -80;
int posY7 = -120;
int posY8 = -160;
int posY9 = -200;
int posY12 = -280;
int posY13 = -320;
int posY10 = -410;
int posY11 = -450;

  


void setup (){

  size (640, 370);
  frameRate(60);


  imagenpaisaje = loadImage ("imagen1.jpg");
  
  vector = loadImage ("imagen2.png"); 
  elizabeth = loadImage ("imagen3.jpg");
  darcy = loadImage("imagen4.jpg");
  todos= loadImage("imagen5.png");
   
  
  font = loadFont ("font1.vlw");
  textFont (font);
  cursor(vector, mouseX, mouseY);
  
}

void draw (){
  println(frameCount);
  image(imagenpaisaje, 0, 0, 640, 370);
  if(frameCount >= 250 && frameCount < 350) {
    image(elizabeth,0,0,640,370);
  } else if (frameCount >= 350 && frameCount < 450) {
    image(darcy,0,0,640,370);
  } else if (frameCount >= 450) {
      image(todos,0,0,640,370);
  }


  println (mouseX, mouseY);
  textAlign(CENTER);
  
//restart button   
 fill(#e1c699);
 rect(0, 311, 90, 70);
 fill(#FFFFFF);
 textSize(25);
 text ("Reiniciar", 45, 344);
  
  
  

 textSize(45);
 text ("Pride and prejudice", textX, posY);
 posY = posY + 2;
 textSize(35);
 text ("Actores Principales: ", textX, posY2); 
 posY2 = posY2 + 2;

 if (frameCount >= 250) {
   text ("Keira Knightley/Elizabeth Bennet", textX, posY3);
   posY3 = posY3 + 3;
 }

 if (frameCount >= 350) {
 text ("Matthew Macfadyen/ Mr Darcy", textX, posY4);
 posY4=posY4+3;
 }

 if (frameCount >= 450) {
   text ("Actores Secundarios:", textX, posY5);
   posY5=posY5+2;

   text ("Rosamund Pike/Jane Bennet", textX, posY6 );
   posY6=posY6+2;

   text ("Jena Malone/ Lydia Bennet", textX, posY7 );
   posY7=posY7+2;

   text ("Carey Mulligan/Catherine Bennet", textX, posY8 );
   posY8=posY8+2;

   text ("Talulah Riley/Mary Bennet", textX, posY9);
  posY9=posY9+2;
  
  text ("Instrumental", textX, posY12);
  posY12=posY12+2;
  
  text ("Dario Marianelli", textX, posY13);
  posY13=posY13+2;

   text ("Director:", textX, posY10);
   posY10=posY10+2;

   text (" Joe Wright", textX, posY11);
   posY11=posY11+2;
 }
}
void mousePressed(){


  if(mouseX>0 && mouseX<90 && mouseY>310 && mouseY<369){
    draw();
    frameCount=0;
      textX = 321;
        textX = 321;
        posY = 10;
        posY2 = -145;
        posY3 = 0;
        posY4 = 0;
        posY5 = 0;
        posY6 = -80;
        posY7 = -120;
        posY8 = -160;
        posY9 = -200;
        posY12 = -280;
        posY13 = -320;
        posY10 = -410;
        posY11 = -450;
  }
}

// Bisello Fiorella 91424/3 comision 1
//https://www.youtube.com/watch?v=P6FbZc1EOfM
float angulo = 0.0;
float tam = 100;
int cant = 50;
void setup() {
  size(500,500);
  strokeWeight(5);
}

void draw() {
  if (mousePressed == false) { 
    strokeWeight(5);
    background(255);
    translate(width/2, height/2);
    for(int i = 0; i < cant; i++) { 
      scale(0.95);
      rotate(radians(angulo));
      rect(width,0,tam,tam);

      scale(0.95);
      rotate(radians(angulo)*2);
      rect(-width,0,tam/2,tam/2);
    }
  } else { 
    translate(mouseX,mouseY);
    float grosor = dist(mouseX, mouseY, pmouseX, pmouseY)/2;     
    strokeWeight(grosor);
    rotate(angulo);
    rect(-15,-15, 30, 30); 
    angulo = angulo + 0.1;
   }
  angulo = angulo + 0.2;
}

void keyPressed() { 
  tam = 100;
  cant = 50;
  background(255);
  angulo = 0.0;
}

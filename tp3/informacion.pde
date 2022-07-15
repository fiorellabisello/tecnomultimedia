void puntaje(){
  text("Mariposas atrapadas: " + contador, 300, 20);
  text("Mariposas perdidas: " + contPerdidas, 100,20);
}
void colision(){
  float distancia = dist(mouseX, mouseY, x, y);
  if (mousePressed && distancia < 40){
      x = -1000;
      contador++;
    }
  }
  
void mariposaPerdida(float x){
  if (x > 300){
    contPerdidas +=1;
  }
}

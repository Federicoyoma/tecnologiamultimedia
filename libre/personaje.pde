class Personaje{
  int posY,posX;
  int tam;
  PImage nave;
  Personaje(int taman, int posicionX, int posicionY){
  posX = posicionX;
  posY = posicionY; 
  tam = taman;  
  nave = loadImage("nave.png");
  }
  
  void dibujar(){
  // fill(255,0,0);
   //rect(posX,posY,tam,tam); 
  
 image(nave,posX,posY,tam,tam);
  }
  
  
  boolean colision(Enemigo enemigo){
    
    if(dist(posX,posY, enemigo.posX, enemigo.posY) <= tam){
      return true;
    }
    return false;
  }
  
  
  
void moverPersonaje(){
 if(keyCode == UP){
   posY = posY - 10;
 }
  else if(keyCode == DOWN){
   posY = posY  + 10;
  }
  
   if(keyCode == LEFT){
   posX = posX - 10;
 }
  else if(keyCode == RIGHT){
   posX = posX  + 10;
  }
  
}
}

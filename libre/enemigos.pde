class Enemigo{
  int cantidadBalas = 10;
  int posX, posY,tam;
  float vel;

  
  Enemigo(int posicionX, int posicionY, int taman){
    posX = posicionX;
    posY = posicionY;
    tam = taman;
    vel = 2.5;
   
  }
  
  
  void dibujar(){
    
   fill(random(0,255),random(0,255),random(0,255));
  ellipse(posX, posY, tam, tam);

    posX-= vel;
   }
   
   void menosVida(int posicion){
    posX = posicion;
     
   }
  
}

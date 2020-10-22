class Perdiste{
 PImage perdedor;
 int posX,posY,tam,tam2;
 
Perdiste(int p_posX, int p_posY, int p_tam, int p_tam2){
   perdedor = loadImage("juegoterminado.png");
   posX = p_posX;
   posY = p_posY;
   tam = p_tam;
   tam2 = p_tam2;
 }  
  
void dibujar(String Perdiste){  
    background(220,0,0); 
   image(perdedor,posX,posY,tam,tam2);  
    textSize(25);
    fill(0);
    text(Perdiste, 150, 450);
    text("Videojuego creado por Federico Yoma", 150, 550);  
    }  
  
  }

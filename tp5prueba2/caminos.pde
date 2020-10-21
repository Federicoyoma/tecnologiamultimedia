class Caminos{
PImage nombreLibro; 
int posX, posY, tam, tam2;

Caminos(int p_posX, int p_posY, int p_tam, int p_tam2){
  nombreLibro = loadImage("nombrelibro.png");
  posX = p_posX;
  posY = p_posY;
  tam = p_tam;
  tam2 = p_tam2;
  }


void dibujar(String Mensaje){
  background(220,0,0); 
   image(nombreLibro,posX,posY,tam,tam2);  
    textSize(20);
    fill(0);
    text(Mensaje, 50, 450);
    text("Espero que te haya gustado este videojuego",150, 550);   
   }  
  
  }

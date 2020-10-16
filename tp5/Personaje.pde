class Personaje{
int posX, posY, tam, tam2;  
PImage charlie;

Personaje(int p_posX, int p_posY, int p_tam, int p_tam2){
  posX = p_posX;
  posY = p_posY;
  tam = p_tam;
  tam2 = p_tam2;
  charlie = loadImage("charlie.png");
  
}

  
void dibujar(){  
  
image(charlie,posX,posY,tam,tam2);  
  
  
}
  
  
  
void mover(){
  
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

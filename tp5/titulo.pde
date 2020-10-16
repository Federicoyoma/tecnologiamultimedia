class Titulo{
int posX, posY, tam, tam2;  
  
Titulo(int p_posX, int p_posY, int p_tam, int p_tam2){  
  posX = p_posX;
  posY = p_posY;
  tam = p_tam;
  tam2 = p_tam2;
}
   
  
 void dibujar(){
  fill(180,9,15); 
  rect(posX,posY,tam,tam2);
  fill(0);
  textSize(20);
  text("Juego Charlie y la fabrica de Chocolate", 220,25);

  }
  }

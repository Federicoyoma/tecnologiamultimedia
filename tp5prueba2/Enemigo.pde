class Enemigo{
  PImage umpa,bomba;
int posX, posY, tamX, tamY; 
float velocidad;
float mov;
int tipo;

Enemigo(int p_posX, int p_posY, int p_tamX, int p_tamY, int p_tipo){
umpa = loadImage("umpa.png");
bomba = loadImage("bomba.png");

mov = 0;
velocidad = 5;
posX = p_posX;
posY = p_posY;
tamX = p_tamX;
tamY = p_tamY;
tipo = p_tipo;
}

void dibujar(){
image(umpa, posX, (posY) +mov, tamX, tamY);
//image(bomba, 80,500,50,50);
 //image(bomba, 80,50,50,50);


if(tipo == 0){
  mov-= velocidad; 
}

 if(tipo == 1){
  mov+= velocidad;
  }
 
if(posY+mov > height  - tamY){
velocidad = velocidad *-1;
}  

if(posY+mov < 0 ){
velocidad = velocidad *-1;
} 


}
}
 

  


  


  
  
  
  
  
  
  
  
  
  
  
  
  

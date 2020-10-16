class Enemigos{
PImage umpa;
int posX, posY, tamX, tamY; 
float velocidad;
float mov;

Enemigos(int p_posX, int p_posY, int p_tamX, int p_tamY){
umpa = loadImage("umpa.png");

mov = 0;
velocidad = 0.5;
posX = p_posX;
posY = p_posY;
tamX = p_tamX;
tamY = p_tamY;

}
  
  
void dibujar(){
 for(int i = 0; i <3; i ++){
image(umpa, posX, (posY*i) +mov, tamX, tamY);
mov+= velocidad;
 }


  
  
}  
  
  
  
  
  
  
}

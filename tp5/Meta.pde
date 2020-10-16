class Metas{  
int cantNenes = 4;  
PImage [] nenes = new PImage[cantNenes];
int posX,posY,tam, tam2;


Metas(int p_posX,int p_posY,int p_tam, int p_tam2){ 
  
for(int i = 0; i < cantNenes; i ++){
nenes[i] = loadImage( i  + ".png"); 
}
  posX = p_posX;
  posY = p_posY;
  tam = p_tam;
  tam2 = p_tam2;

 }
 
 
 
 void dibujar(){
fill(0,40);   
rect(0,0,50,width);   
for(int i = 0; i<cantNenes; i ++){
image(nenes[i], 10, i*170, 30, 70);
} 
fill(106,69,10);
rect(posX,posY,tam,tam2);
 }
  
  


  
  
  
  
  
  
  
  
}

class Fondo{
PImage fondo;  
  
 Fondo(){
 fondo = loadImage("original.jpg"); 
 }
  
 void dibujar(){
  image(fondo,0,0,width,height); 
  
 }
  
  
  
}

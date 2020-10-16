class Juego{
Fondo fondo;  
Personaje personaje;  
Metas metas;
Titulo titulo;
Vida vida;
Enemigos enemigos, enemigos1;

  
Juego(){ 
fondo = new Fondo();   
personaje = new Personaje(370,250,50,100);    
metas  = new Metas(750,0,width,height);
titulo = new Titulo(180,0,450,40);  
vida = new Vida(3);
enemigos = new Enemigos(100,200,60,80);
enemigos1 = new Enemigos(650,200,60,80);

}
  
  
  
void dibujar(){
fondo.dibujar();
personaje.dibujar();  
metas.dibujar();  
titulo.dibujar();  
vida.dibujar();  
enemigos.dibujar();
enemigos1.dibujar();

}
  
  
void mover(){
personaje.mover();  
  
  
}
  
}

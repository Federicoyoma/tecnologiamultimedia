class VideoJuego{
 Enemigo [] enemigo = new Enemigo[11]; 
Personaje personaje;  
Metas metas;
Titulo titulo;
Vida vida;

VideoJuego(){
 inicializar(); 
 }
 
  void dibujar(){
  dibujoVideoJuego();
  }
  
 
  
 void mover(){
personaje.mover();     
}

void dibujoVideoJuego(){
personaje.dibujar();  
metas.dibujar();  
titulo.dibujar();  
vida.dibujar();   
 for(int i = 1; i <11; i ++){
enemigo[i].dibujar(); 
if(personaje.colision(enemigo[i])){
  personaje.reiniciar(750);
  vida.restar();
//}
}
}
}

void inicializar(){
 personaje = new Personaje(750,250,50,100);    
metas  = new Metas(0,/*320*/0,50,height);
titulo = new Titulo(180,0,450,40);  
vida = new Vida(3);

for(int i = 1; i <11; i ++){
enemigo[i]= new Enemigo(65*i,250,40,60, i%2);  
} 
}  

 int ganasteOperdiste(){
   if(personaje.ganaste()){
      return 1; }//Ganar
   if(vida.perdiste()){
      return 2; // Perder
    }
    return 0; //No pasó nada
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
}

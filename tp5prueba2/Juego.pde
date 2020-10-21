class Juego{
int estado;   
Presentacion presentacion;
VideoJuego videoJuego;
Perdiste perdiste;
Caminos caminos;

Juego(){  
presentacion = new Presentacion();
inicializar();
perdiste = new Perdiste(200,100,400,300);
caminos = new Caminos(200,100,400,300);
}

void dibujar(){
if(estado == 0){
      presentacion.dibujar();
    }else if(estado == 1){
      dibujoVideoJuego();
    }else if(estado == 2){
     caminos.dibujar("Has elegido que charlie tome una decision, juego finalizado. Felicitaciones");
    }else if(estado == 3){
      perdiste.dibujar("Te has quedado sin vidas, la proxima juega mejor :)");
    }

}



void clickeo(){
  
if(estado == 0){
      estado = 1;
    }
}  


  
  void dibujoVideoJuego(){
    videoJuego.dibujar();
    //Controlar Ganar o Perder
    if(videoJuego.ganasteOperdiste() == 1){
      estado = 2;
    }else if(videoJuego.ganasteOperdiste() == 2){
      estado = 3;
    }
  }
  
  
  void inicializar(){
    videoJuego = new VideoJuego();
    estado = 0;
  }
  
 void mover(){
  videoJuego.mover(); 
  }  
  
}

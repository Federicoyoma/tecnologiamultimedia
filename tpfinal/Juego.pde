class Juego {
  int estado;   
  VideoJuego videoJuego;



  Juego() {  

    inicializar();
  }

  void dibujar() {
    if (estado == 0) {
    } else if (estado == 1) {
      dibujoVideoJuego();
    } else if (estado == 2) {
      controlador.pantallaActual = controlador.pantallas[7];  
      inicializar();
    } else if (estado == 3) {
      controlador.pantallaActual = controlador.pantallas[8];
      inicializar();
    }
  }



  void clickeo() {

    if (estado == 0) {
      estado = 1;
    }
  }  



  void dibujoVideoJuego() {
    videoJuego.dibujar();
    //Controlar Ganar o Perder
    if (videoJuego.ganasteOperdiste() == 1) {
      estado = 2;
    } else if (videoJuego.ganasteOperdiste() == 2) {
      estado = 3;
    }
  }


  void inicializar() {
    videoJuego = new VideoJuego();
    estado = 1;
  }

  void mover() {
    videoJuego.mover();
  }
}

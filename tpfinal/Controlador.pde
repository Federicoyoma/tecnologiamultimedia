class Controlador {
  SoundFile audio;
  Pantalla pantallaActual;
  int cantidadPantallas = 12;
  Pantalla [] pantallas = new Pantalla [cantidadPantallas];
  PImage [] fondos = new PImage [cantidadPantallas];
  Textos textos = new Textos();
  Juego juego;
  Creditos creditos;
  Resize resize;

  Controlador(PApplet musica) {
    audio = new SoundFile(musica, "audioTecno3.mp3");
    audio.play();


    int pantalla;
    Boton boton1, boton2;
    cargarFondos();
    pantallas = new Pantalla[cantidadPantallas];
    resize = new Resize();

    //creo la pantalla inicial
    pantalla = 0;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(20), resize.valorY (520), 1); //posiciones de los botones, y a la pantalla que te lleva
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(550), resize.valorY(520), 2);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null); // primer null juego, segundo null creditos

    //Creo la pantalla creditos
    pantalla = 1;
    creditos = new Creditos(textos.getTextoParaPantalla(pantalla), resize.valorX(25), resize.valorY(600)); //posicion texto
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(550), resize.valorY(520), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], "", null, boton2, null, creditos);


    pantalla = 2;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(550), resize.valorY(520), 3);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null, null);

    pantalla = 3;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(20), resize.valorY(520), 4);
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(550), resize.valorY(520), 9);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    pantalla = 4;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(550), resize.valorY(520), 5);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null, null);

    pantalla = 5;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(550), resize.valorY(520), 6);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton2, null, null);

    pantalla = 6;
    juego = new Juego();

    // boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), 550, 520, 8);
    //  boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, 20, 520, 7);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, null, juego, null);


    pantalla = 7;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(20), resize.valorY(520), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 8;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(20), resize.valorY(520), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 9;
    boton2 = new Boton(null, textos.getTextoParaPantallaBoton(pantalla, 1), resize.valorX(550), resize.valorY(520), 11);
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(20), resize.valorY(520), 10);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    pantalla = 10;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(20), resize.valorY(520), 9);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 11;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), null, resize.valorX(20), resize.valorY(520), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    //Al terminar de crear las pantallas, indico la actual.
    pantallaActual = pantallas[0];
  }


  void dibujar() {

    pantallaActual.dibujar();
  }


  void cargarFondos() {
    for (int i = 0; i < cantidadPantallas; i ++) {
      fondos[i] = loadImage( i + ".jpg");
    }
  }  

  void mouseClicked() {  
    int pantallaAIr = pantallaActual.mouseClicked();
    if (pantallaAIr != -1) {
      pantallaActual = pantallas[pantallaAIr];
    }

    if (pantallaActual == pantallas[6]) {
      juego.clickeo();
    }

    //reiniciar creditos
    creditos.volverCreditos();

    //reiniciar juego 
    if (pantallaAIr == 0) {
      juego.estado = 1;
    }
  }

  void keyPressed() {
    if (pantallaActual == pantallas[6]) {
      juego.mover();
    }
  }
} 

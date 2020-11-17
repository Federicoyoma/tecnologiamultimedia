class Pantalla {
  Boton [] botones;
  PImage fondo;
  PFont fuente;
  Boton boton1;
  Boton boton2;
  String textoPantalla;
  Juego juego;
  Creditos creditos;

  Pantalla(PImage fondo, String textoPantalla, Boton boton1, Boton boton2, Juego juego, Creditos creditos) {
    this.fondo = fondo;
    this.textoPantalla = textoPantalla;
    this.boton1 = boton1;
    this.boton2 = boton2;
    this.juego = juego;
    fuente = loadFont("CenturyGothic-BoldItalic-30.vlw");
    this.creditos = creditos;
  } 

  void dibujar() {
    pushStyle();
    tint(165);  
    image(this.fondo, 0, 0, width, height);  
    popStyle();
    textFont(fuente);
    fill(255);
    textSize(20);
    
    //POSICIONES DE LOS TEXTOS.
    text(this.textoPantalla, controlador.resize.valorX(15), controlador.resize.valorY(200));


    if (boton1 != null) {
      boton1.dibujar();
    } 

    if (boton2 != null) {
      boton2.dibujar();
    }

    if (juego != null) {
      juego.dibujar();
    }

    if (creditos != null) {
      creditos.dibujar();
    }
  } 

  int mouseClicked() {
    int pantallaAIr = -1;  
    if (boton1 != null) {
      pantallaAIr = boton1.mouseClicked();
    } 
    if (boton2 != null && pantallaAIr == -1) {
      pantallaAIr = boton2.mouseClicked();
    }  

    return pantallaAIr;
  }
}

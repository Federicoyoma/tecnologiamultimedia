class Boton {
  int posX, posY, ancho, alto, pantallaAIr;
  String texto, texto2;
  PImage imagenBoton;


  Boton(String texto, String texto2, int posX, int posY, int pantallaAIr) {
    this.texto = texto;
    this.texto2 = texto2;
    this.posX = posX;
    this.posY = posY;
    this.pantallaAIr = pantallaAIr;
    imagenBoton = loadImage("boton7.png");
    ancho = 180;
    alto = 55;
  }


  void dibujar() {
    image(imagenBoton, posX, posY, ancho, alto);   

    //texto de los BOTONES
    fill(0);
    textSize(17);
    if (texto != null) {
      text(texto, controlador.resize.valorX(posX+18), controlador.resize.valorY(545));
    }
    if (texto2 != null) {
      text(texto2, controlador.resize.valorX(560), controlador.resize.valorY(545));
    }
  }  


  int mouseClicked() {
    if (mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto ) {
      return pantallaAIr;
    }
    return -1;
  }
}  

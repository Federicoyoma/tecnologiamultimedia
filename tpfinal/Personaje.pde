class Personaje {
  int posX, posY, tam, tam2;  
  PImage charlie;

  Personaje(int p_posX, int p_posY, int p_tam, int p_tam2) {
    posX = p_posX;
    posY = p_posY;
    tam = p_tam;
    tam2 = p_tam2;
    charlie = loadImage("charlie.png");
  }


  void dibujar() {  
    image(charlie, controlador.resize.valorX(posX), controlador.resize.valorY(posY), tam, tam2);  

    if (posX + tam >= width) {
      posX = width - tam;
    }

    if (posY <= 0) {
      posX = width - tam;
    }

    if (posY + tam*2>= height) {
      posX = width - tam;
    }
  }

  boolean colision(Enemigo enemigo) {
    if (dist(posX, posY, enemigo.posX, enemigo.posY + enemigo.mov) < tam/2) {
      return true;
    }
    return false;
  }

  void reiniciar(int p_reiniciar) {
    posX = p_reiniciar;
  }


  void mover() {

    if (keyCode == UP) {
      posY = posY - 10;
    } else if (keyCode == DOWN) {
      posY = posY  + 10;
    }

    if (keyCode == LEFT) {
      posX = posX - 10;
    } else if (keyCode == RIGHT) {
      posX = posX  + 10;
    }
  }


  boolean ganaste() {
    return posX == 30;
  }
}

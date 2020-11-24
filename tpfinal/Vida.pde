class Vida {
  int vida;  

  Vida(int p_vida) {
    vida = p_vida;
  }


  void dibujar() {
    fill(255, 0, 0); 
    textSize(25);
    text("Vidas:" + vida, controlador.resize.valorX(350), controlador.resize.valorY(70));
  }

  void restar() {

    vida = vida - 1;
  }

  boolean perdiste() {
    return vida == 0;
  }
}

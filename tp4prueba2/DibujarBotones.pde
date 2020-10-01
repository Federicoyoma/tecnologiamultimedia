void botones(){
   if (pantalla == 1 || pantalla == 4 || pantalla == 7 || pantalla == 10) {
    dibujarBotones(valorX(20), valorY(520), valorX( 200), valorY( 70));
    dibujarBotones(valorX(550), valorY(520), valorX(200), valorY(70));
  } else if (pantalla == 2 || pantalla == 3 || pantalla == 5 || pantalla == 6) {
    dibujarBotones(valorX(550), valorY(520),valorX (200),valorY (70));
  } else if (pantalla == 8  || pantalla == 9 || pantalla == 11 || pantalla == 12) {
    dibujarBotones(valorX(270), valorY (520), valorX(260),  valorY(50));
  }
  
}

void dibujarBotones(float X, float Y, float tamX, float tamY) {
 image(imagenBoton,X,Y,tamX,tamY);
}

void clickeo() {
  
    if (mouseX > valorX(botones[pantalla][0][1]) && mouseX < valorX(botones[pantalla][0][2]) && mouseY > valorY(botones[pantalla][0][3]) && mouseY < valorY(botones[pantalla][0][4])) {
    pantalla = botones[pantalla][0][0];
    }
     else if (botones[pantalla][1].length > 0) { 
    if (mouseX > valorX(botones[pantalla][1][1]) && mouseX < valorX(botones[pantalla][1][2]) && mouseY > valorY(botones[pantalla][1][3]) && mouseY < valorY(botones[pantalla][1][4])) {
      pantalla = botones[pantalla][1][0];
    }
  }
}

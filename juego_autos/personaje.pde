void inicializarAutoPersonaje(){
  posX = 0;
}

void dibujarAutoPersonaje(){
  fill(255,0,0);
  rect(posX, height - tamY , tamX, tamY);
if(personas <= 0){
      background(0);
     fill(255);
     textSize(40);
    text("Perdiste",80,200); 
    textSize(15);
    text("Clickea la pantalla para reiniciar",30,250); 
    fill(0);
     rect(posX, height - tamY , tamX, tamY);
    ;
  }
  
  if(personas <= 100){
    fill(0);
   text("Intenta no chocar!!",50,100); 
  }
}

void moverAutoPersonaje(){
  if (keyCode == LEFT) {
    posX = posX - tamX;
  } else if (keyCode == RIGHT) {
    posX = posX + tamX;
  } 
}

void clickearPerdiste(){
  if(personas <= 0){
   if(mouseX > 0 && mouseX < width && mouseY >0 && mouseY < height ){
     loop();
     background(200);
     personas = 200;
     for(int cc = 0; cc < cantCaminos; cc++){
    for(int ca = 0; ca < cantAutos; ca++){
      autosEnemigos[cc][ca] = round(random(-2000 * (ca + 1),-2000 * ca));
    }
  }
   }
   }
 }

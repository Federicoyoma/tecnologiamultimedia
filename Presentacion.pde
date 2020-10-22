class Presentacion{
PFont fuente;
PImage charlie;

Presentacion(){
  
fuente = loadFont("KristenITC-Regular-48.vlw"); 
textFont(fuente);
 charlie = loadImage("charlie.png");

}
  
  
  
 void dibujar(){   
  background(0); 
  textSize(30);
  fill(255);
  text("Juego Charlie y la fabrica de chocolate",100,100);
  textSize(15);
  text("El juego consiste en tener que elegir un camino, pero hay que tener cuidado que no te atrapen  \n los umpa lumpa!!",50,300);
  text("En este juego se reemplaza la pantalla en la que charlie tiene que elgir si seguir el \n recorrido con los chicos o quedarse solo a tomar del lago de chocolate",50,400);
  image(charlie,330,120,100,150); 
  fill(255,0,0);
  rect(230,450,300,50);
  fill(0);
  textSize(20);
  text("Clickea la pantalla para iniciar", 240,480);
 }
  
  
  /*void clickeo(){
  if(mouseX > 230 && mouseX < 530 && mouseY > 450 && mouseY < 500){
   
  }
  }*/
  
  }
  
   
  

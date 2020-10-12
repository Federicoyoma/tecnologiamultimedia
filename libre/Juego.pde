class Juego{
  PImage fondo;
 int tam = height/10;
Personaje personaje;
Enemigo [] posEnemigo = new Enemigo [1000];
Vidas vidas;

Juego(){
  for(int i = 0; i < 1000 ; i ++){
 posEnemigo[i] = new Enemigo(i*tam,round(random(-700,height)),20);
 loop();
  }
 personaje = new Personaje(60,200,200); 
 vidas = new Vidas(25,30);

}


void dibujar(){
  fondo = loadImage("fondo.jpg");
 image(fondo,0,0,width,height);
 for(int i = 0; i < 1000 ; i ++){
 posEnemigo[i].dibujar();
 
 if(personaje.colision(posEnemigo[i])){
  posEnemigo[i].menosVida(round(random(-700,height)));
  vidas.menosVidas();
 }
 }
personaje.dibujar(); 
vidas.dibujar();

}


void moverPersonaje(){
personaje.moverPersonaje(); 
  
}
  
}

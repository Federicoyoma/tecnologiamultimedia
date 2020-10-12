class Vidas{
  int vidas, posX,posY;
  PImage explosion;
  
  Vidas(int X, int Y){
   vidas = 5;
   posX = X;
   posY = Y;
   explosion = loadImage("explosion.jpg");
  }
  
  void dibujar(){
    
   fill(255);
   rect(15,10,80,30);
   fill(0);
   textSize(15);
   text("Vidas:" + vidas, posX,posY);
  }
  
  void menosVidas(){
   vidas--; 
    if(vidas == 0){
    image(explosion,0,0,400,400);
     if(vidas == 0){
       vidas = 5;
     }
    }
   
    
  }
}

class Verticales {


//---------------------
//variables de calibracion
float minimoAmp = 45;
float maximoAmp = 100;
float minimoPitch = 44; //grave
float maximoPitch = 74; //agudo
boolean monitor = false;

float f = 0.9;
//---------------------
float amp;
float pitch;

GestorSenial gestorAmp;
GestorSenial gestorPitch;
//declaro el objeto osc
OscP5 osc;
  float x1;
  float moverv;

  Verticales(float xl) {
    this.x1=xl;
  gestorAmp = new GestorSenial(minimoAmp, maximoAmp,f);
  gestorPitch = new GestorSenial(minimoPitch, maximoPitch,f);

  //inicializo el obejeto osc
  osc = new OscP5(this, 12345);
  }


  void dibujar() {
    
  gestorAmp.actualizar(amp);
  gestorPitch.actualizar(pitch);

   //tamaños en X
    int  x2= int(random(4, 9));
    int  x3 = int(random(2, 8));
    int  x4 = int(random(1, 3));

   //int r=int(random(255));
 //  int g=int(random(255));
  // int b=int(random(255));

 // float color1 = map(gestorAmp.filtradoNorm(), 0, 1, 0,50);
  float color1 = map(pitch, minimoPitch, maximoPitch,0,255);
  float color2 = map(pitch, minimoPitch, maximoPitch,0,100);
  float color3 = map(pitch, minimoPitch, maximoPitch,0,170);

    noStroke();
    rectMode(CENTER);
    frameRate(30);
    fill(color1, color2, color3);
    rect(x1, random(245, 345), x2, random(-300, 300)); 
    rect(x1, random(245, 345), x3, random(-270, 270));
    rect(x1, random(245, 345), x4, random(-380, 380));
   
    moverv=x1+3.2;  
    x1=moverv;
    
    if(x1 == width){
    background(235);
    x1 = 0; 
   }
  }
  
  void oscEvent(OscMessage m){
  if(m.addrPattern().equals("/amp")){
   amp = m.get(0).floatValue(); //cargo en la variable amp el primer dato del mensaje q entra
  println("amp:" + amp);
}

 if(m.addrPattern().equals("/pitch")){
   pitch = m.get(0).floatValue(); //cargo en la variable amp el primer dato del mensaje q entra
  println("pitch:" + pitch);
}

}
  
}

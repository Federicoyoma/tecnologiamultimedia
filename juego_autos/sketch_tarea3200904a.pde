int cantCaminos = 3;
int cantAutos = 4;
int tamX, tamY, posX;
int personas = 200;
int [][] autosEnemigos = new int [cantCaminos][cantAutos];
String perdiste = "Perdiste";
void setup(){
  size(300,600);
  
  tamX = width / cantCaminos;
  tamY = height / 4;
  
  inicializarAutosEnemigos();
  inicializarAutoPersonaje();
 
 
}

void draw(){
  background(200);
  dibujarAutosEnemigos();
  dibujarAutoPersonaje();
   textSize(20);
  fill(0);
  text("Personas en el tren:" + personas, 40,50);
 
}


void keyPressed(){
  moverAutoPersonaje();
}

void mouseClicked(){
 clickearPerdiste(); 
}

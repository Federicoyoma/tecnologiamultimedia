int cantH = 10;
int tam;
int [] posX = new int [cantH]; // Posiciones en X de cada ellipse
int [] dirX = new int [cantH]; // Direcciones en X de cada ellipse
int personajePosX, personajePosY;
int cantH2 = 5;
int [] numeros = new int [5];
String Meta = "Meta";
color negro = color(0);
int vidas = 3;
int nivel1 = 1;


void setup() {
  size(500, 500);

  tam = height/cantH;
numeros[0] = 5;
numeros[1] = 4;
numeros[2] = 3;
numeros[3] = 2;
numeros[4] = 1;

  surface.setResizable(true);

  textSize(20);
  textAlign(CENTER);
  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantH-1; h++) {
    //Genero aleatoriamente la posX de la elipse
    posX[h] = round(random(tam, width-tam));
    //Genero aleatoriamente la dirección
    if (random(0, width)>width/2)
      dirX[h] = 1;
    else
      dirX[h] = -1;
  }
  
    
  
  //La ubicación del Personaje
  personajePosX = width/2;
  personajePosY = height - tam/2;
}

void draw() {  
  tam = height/cantH;
if(nivel1 == 1){
  background(200);
  
  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantH-1; h++) {
    fill(255);
    ellipse(posX[h], h*tam + tam/2, tam, tam);
    //Calculo la nueva posición
    posX[h] = posX[h] + dirX[h];
    //Si toca algún borde, cambia la dirección
    if (posX[h] < tam/2 || posX[h] > width-tam/2) {
      dirX[h] = dirX[h] * -1;
    }
 
 
if(dist(posX[h], h*tam + tam/2 ,personajePosX,personajePosY) <= tam - 1){
  personajePosY = height - tam/2;
}
 }
  


  fill(255,0,0);
  ellipse(personajePosX, personajePosY, tam, tam);


  for(int k = 0; k < cantH2; k ++){
    fill(234,137,157);
rect(0,k*100,20,100);
fill(0);
textSize(20);
text(numeros[k],10, k *100 + 50);
  }
  
if(personajePosY < 400 ){
fill(0);
rect(0,400,20,100);
}

if(personajePosY < 300 ){
fill(0);
rect(0,300,20,100);
}

if(personajePosY < 200 ){
fill(0);
rect(0,200,20,100);
}

if(personajePosY < 100 ){
fill(0);
rect(0,100,20,100);
}

if(personajePosY < 0 ){
fill(0);
rect(0,0,20,100);
}

if(personajePosY < 20){
  fill(0,0,255);
 rect(100,200,300,50); 
 fill(255);
 textSize(15);
 text("Nivel 1 completo, toca aqui para reiniciar",250,230);

}

fill(255,0,0);
rect(20,0,width,20);
fill(0);
  text(Meta, width/2,15);
}


}



  

void keyPressed() {
  //Controlo el personaje arriba y abajo
  if (keyCode == UP) {
    personajePosY = personajePosY - tam;
  } else if (keyCode == DOWN) {
    personajePosY = personajePosY + tam;
  }
}

void mouseClicked(){
 if(mouseX > 100 && mouseX < 400 && mouseY > 200 && mouseY < 250){
  personajePosY =  height - tam/2;
  
 }
}

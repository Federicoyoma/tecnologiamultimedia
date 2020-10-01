void pantallaprincipal(int pant, int X, int Y, int posX, int posY){
if(pantalla == pant){  
textSize(20);
fill(0);
text(textos[0],  valorX(X),  valorY(Y));
text(textos[1],  valorX(posX), valorY(posY));
}}

void pantalla2textos(int pant, int valor1, int valor2,int poX, int poY){
if(pantalla == pant){  
textSize(20);  
fill(255);
text(textos[valor1],  valorX(15),  valorY(200));
textSize(15);  
fill(0);
text(textos[valor2],  valorX(poX),  valorY(poY));
}}

void pantalla3textos(int pant, int valor1, int valor2, int valor3, int posX, int posY, int posX2, int posY2){
if(pantalla == pant){  
  textSize(20);
fill(255);
text(textos[valor1], valorX(15),  valorY(200));
textSize(15);
fill(0);
text(textos[valor2], valorX( posX),  valorY(posY));
text(textos[valor3],  valorX(posX2),  valorY(posY2));
}  }

void pantalla4textos(int pant, int valor1, int valor2, int valor3, int valor4, int poX, int poY, int posX2, int posY2, int posX3, int posY3){
if(pantalla == pant){  
  textSize(20);
fill(255);
text(textos[valor1],  valorY(15),  valorY(200));
text(textos[valor2],  valorX(poX),  valorY(poY));
textSize(15);
fill(0);
text(textos[valor3],  valorX(posX2),  valorY(posY2));
text(textos[valor4],  valorX(posX3),  valorY(posY3));
}}

void pantallaCreditos(int pant, int X, int Y, int posX2, int posY2){
if(pantalla == pant){  
textSize(25);
fill(255,0,0);
text(textos[2],  valorX(X),  valorY(Y));
fill(255);
textSize(18);
text(textos[3],  valorX(15), movY);
movY--;
if(movY < 200){
movY++;}
fill(0);
text(textos[4],  valorX(posX2),  valorY(posY2));
}}

int maxImagen = 13;
PImage imagenBoton;
int cantPantallas = 13;
PImage [] imagenes = new PImage [maxImagen];
int pantalla = 1;
PFont fuente;
String [] textos = new String [36];
int [][][] botones = new int [cantPantallas][2][5];
int movY = 650;
int movY2 = movY;

void setup() {
  size(800, 600);
  imagen();
  fuente = loadFont("CenturyGothic-BoldItalic-30.vlw");
  arregloTextos();
  arregloBoton();
  
}

void draw() {
  tint(160);
  image(imagenes[pantalla], 0, 0, width, height);
  textFont(fuente);
  botones();
  historia();


}




void mouseClicked() {
  clickeo();
}

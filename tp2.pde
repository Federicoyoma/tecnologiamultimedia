PImage imagen;
PFont fuente;
float velY = 700;
int velY2 = 820;
int velY3 = 920;
int velY4 = 920;
int velY5 = 1000;
int velY6 = 1080;
int velY7 = 1160;
int velY8 = 1240;
int velY9 = 1320;
int velY10 = 1400;
int velY11 = 1480;
int velY12 = 1560;
int velY13 = 1640;
int velY14 = 1720;
int velY15 = 1800;
int velY16 = 2200;
int velY17 = 2300;
int velY18 = 2400;
int velY19 = 2500;
int velY20 = 2600;
int velY21 = 2700;
int velY22 = 2800;
int velY23 = 2900;
int velY24 = 3000;
int velY25 = 3100;
int velY26 = 3400;
int velY27 = 3500;
int velY28 = 3750;
int velY29 = 3850;

void setup(){
 size(500,500); 
 fuente = loadFont("BookAntiqua-BoldItalic-30.vlw");
 textFont(fuente);
 imagen = loadImage("starfall-gif-41-gap.jpg");
 
}

void draw(){
  background(200);
 image(imagen,0,0); 
   textSize(60);
    fill(0,255,0);
  text("Spider-Man",90,velY);
  velY = velY - 3.9;
  fill(255,0,0);
  textSize(65);
   text("Creditos",125,velY2);
   velY2 = velY2 - 2;
   fill(255);
   textSize(35);
   text("Protagonistas:",20,velY3);
  velY3 = velY3 - 2;
  textSize(25);
  text("Tobey Maguire",280,velY4);
   velY4 = velY4 - 2;
  text("Kirsten Dunst",280,velY5);
  velY5 = velY5 - 2;
  text("Harry Osborn",280,velY6);
  velY6 = velY6 - 2;
  text("Willem Dafoe",280,velY7);
  velY7 = velY7 - 2;
  text("Elizabeth Banks",280,velY8);
  velY8 = velY8 - 2;
   text("Joe Manganiello",280,velY9);
  velY9 = velY9 - 2;
  text("Cliff Robertson",280,velY10);
  velY10 = velY10 - 2;
  text("Sara Ramirez",280,velY11);
  velY11 = velY11 - 2;
  text("J.K Simmons",280,velY12);
  velY12 = velY12 - 2;
  text("Lucy Lawless",280,velY13);
  velY13 = velY13 - 2;
  text("Rosematy Harris",280,velY14);
  velY14 = velY14 - 2;
  text("Randy Savaje",280,velY15);
  velY15 = velY15 - 2;
  fill(255,0,0);
  textSize(65);
  text("Musica:",125,velY16);
  velY16 = velY16 - 2;
  fill(255);
  textSize(25);
  text("Theme From Spider Man-Danny Elfman",25,velY17);
  velY17 = velY17 - 2;
  text("Her -Chad Kroeger",25,velY18);
  velY18 = velY18 - 2;   
  text("What We're All About- Sum 41",25,velY19);
  velY19 = velY19 - 2; 
  text("Learn To Crawl-Black Lab",25,velY20);
  velY20 = velY20 - 2; 
  text("Bother-Corey Taylor",25,velY21);
  velY21 = velY21 - 2; 
  text("Shelter-Greenwheel",25,velY22);
  velY22 = velY22 - 2; 
  text("Farewell -Danny Elfman",25,velY23);
  velY23 = velY23 - 2;
  text("I - IV -Injectedn",25,velY24);
  velY24 = velY24 - 2;
  text("Undercover-Pete Yorn",25,velY25);
  velY25 = velY25 - 2;
  fill(255,0,0);
  textSize(65);
  text("Direccion",110,velY26);
  velY26 = velY26 - 2;
  fill(255);
  textSize(40);
  text("Sam Raimi",150,velY27);
  velY27 = velY27 - 2;
  textSize(50);
  fill(255,0,0);
  text("Direccion artistica:",50,velY28);
  velY28 = velY28 - 2;
  fill(255);
  textSize(30);
  text("Stella Vacarro",150,velY29);
  velY29 = velY29 - 2;
}
   
   
   
   
   
   
   
   
   

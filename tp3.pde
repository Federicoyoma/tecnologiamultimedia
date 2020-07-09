PImage imagen;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;
PImage imagen7;
PImage imagen8;
PImage imagen9;
PImage imagen12;
int pantalla = 1;
PFont fuente;
PFont fuente2;
//pantalla 2
int p2Y0 = -100;
int p2Y = 600;
int p2Y2 = 700;
//pantalla 3
int posY = -150;
int posY2 = 750;
//pantalla 4
int movX = -600;
int movX2 = 800;
int movY = 700;
//pantalla 5
int movY5 = -100;
int movY25 = 700;
//pantalla 6
int movX6 = -500;
int movY6 = 700;
//pantalla 7
float movY7 = -150;
//pantalla 8
float movX8 = 850;
//pantalla 9
int movY9 = -50;
int movY92 = 650;
int aparecerX = 20;
int aparecerY = 200;
//pantalla 10
int movY10 = 650;
//pantalla 11
int movY11 = -100;
int movY112 = 650;
int movX11 = -580;
int movX112 = 850;
//pantalla 12
int movY12 = 650;
//para que vuelva
int pos1inicial = 600;
int pos2inicial = 700;
//3
int pos3inicial = -150;
int pos32inicial = 750;
//4
int pos4inicial = -600;
int pos42inicial = 800;
int pos43inicial = 700;
//pantalla 5
int pos5inicial = -100;
int pos52inicial = 700;
//pantalla 6
int pos6inicial = -500;
int pos62inicial = 700;
//pantalla 7
int pos7inicial = -150;
//pantalla 8
int pos8inicial = 850;
//pantalla 9
int pos9inicial = -50;
int pos92inicial = 650;
//pantalla 10
int pos10inicial = 650;
//pantalla 11
int pos11inicial = -100;
int pos112inicial = 650;
int pos113inicial = -580;
int pos114inicial = 850;
//pantalla12
int pos12inicial = 650;


void setup(){
 size(800,600); 
 fuente = loadFont("CenturyGothic-BoldItalic-30.vlw");
 fuente2 = loadFont("FranklinGothic-Heavy-40.vlw");
imagen = loadImage("primeraimagen.jpg");
imagen2 = loadImage("estrellas.jpg");
imagen3 = loadImage("chocolateoriginal.jpg");
imagen4 = loadImage("fabrica.jpg");
imagen5 = loadImage("billetedorado.jpg");
imagen6 = loadImage("pantalla6.jpg");
imagen7 = loadImage("fabrica2.jpg");
imagen8 = loadImage("lago.jpg");

imagen12 = loadImage("Algo ha salido mal.png");

 }

   
void draw(){
  tint(80);
  
  textFont(fuente);
  
    if(pantalla == 1){
      noTint();
      image(imagen,0,0,800,600);
    //boton creditos
    fill(255,0,0);
     if(mouseX>40 && mouseX<190 && mouseY>530 && mouseY<580){
    fill(0,0,255);}
    rect(40,530,150,50);
    fill(0);
    textSize(20);
    text("Creditos", 70, 560);
   
      
  
    // boton iniciar historia    
    fill(255,0,0);
    if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
      fill(0,255,0);}
    rect(570,530,150,50);
    fill(0);
    textSize(20);
    text("Iniciar historia", 580, 560); 
}
    
    //pantalla de creditos
     else if(pantalla == 2){
   image(imagen2,0,0,800,600);            // fondo para que cambie de pantalla
    fill(255);
    textSize(30);
    fill(255,0,0);
    textFont(fuente2);
    text("Créditos", 300, 100);
    textFont(fuente);
    fill(255);
    textSize(17);
    text("Aventura grafica realizada por Federico Yoma, estudiante de la carrera \n diseño multimedial en la unlp.", 30, p2Y);
     if(p2Y > 200){
      p2Y = p2Y - 1;}
    text("El libro cuenta la historia de Charlie Bucket, un niño que vive con sus padres y abuelos \n en una casa bastante ruinosa, ya que carecen de recursos. Su situación empeora aún \n más cuando su padre es despedido de su trabajo. Entre tanta miseria, Charlie y su abuelo \n Joe sueñan con visitar la Fábrica de Chocolate del célebre Willy Wonka, un misterioso \n chocolatero que lleva años sin dejarse ver en público. Parecía imposible, pero sucede \n un milagro: Willy Wonka decide escoger a cinco niños afortunados para visitar la fábrica, \n con tan buena suerte que Charlie resulta ser uno de ellos. Una vez dentro, conocerán al \n excéntrico dueño de la fábrica, en una aventura que nunca podrán olvidar.",30,p2Y2);
    if(p2Y2 > 300){
      p2Y2--;}
    fill(255,0,0);
    if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
      fill(0,0,255);}
     if(p2Y2 == 300){
     rect(570,530,150,50);    
     }
     fill(0);
    textSize(20);
    if(p2Y2 == 300){
    text("Volver", 610, 560);}
     }
    
    //pantalla de iniciar historia
    else if(pantalla == 3){
      image(imagen3,0,0,800,600);          // fondo para que cambie de pantalla
      fill(255);
      textSize(20);
      text("pantalla 3",10,30);
      text("Charlie era un niño muy pobre, que vivía acompañado por sus cuatro  abuelos \n y sus padres. La familia era tan pobre, que no se podia permitir comer variado, \n por lo tanto cada dia comia lo mismo. Por su cumpleaños Charlie solo recibía \n una sola  tableta de chocolate, ya que sus padres no podían comprarle nada  \n más. Charlie cada dia pasaba por la enorme fabrica de chocolate, y \n cuando olia aquel agradable aroma, cerraba los ojos y deseaba saborearlo.", 15, posY);
       if(posY < 250){
      posY = posY + 2;}
       text("Charlie era un niño muy pobre, que vivía acompañado por sus cuatro  abuelos \n y sus padres. La familia era tan pobre, que no se podia permitir comer variado, \n por lo tanto cada dia comia lo mismo. Por su cumpleaños Charlie solo recibía \n una sola  tableta de chocolate, ya que sus padres no podían comprarle nada  \n más. Charlie cada dia pasaba por la enorme fabrica de chocolate, y \n cuando olia aquel agradable aroma, cerraba los ojos y deseaba saborearlo.", 15, posY2);
       if(posY2 > 250){
      posY2 = posY2 -2;}
      //boton continuar leyendo
      fill(255,0,0);
      if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
      rect(570,530,150,50);
      }
      fill(0);
      textSize(15);
       text("Continuar leyendo", 580, 560);}
      
  
      else if(pantalla == 4){
      image(imagen4,0,0,800,600);
      fill(255);
      textSize(20);
      text("pantalla 4",10,30);
      text("Un día, el padre de Charlie le cuenta que se abrirá la fábrica de \n chocolate del señor Wonka, que anteriormente había sido cerrada \n debido a que le robaban las recetas.",movX,200); 
      if(movX < 40){
      movX = movX + 2;}
      text("La fabrica permitiría que 5 niños de cualquier parte del mundo \n puedan visitarla, pero para poder entrar necesitaban encontrar \n billetes dorados dentro de los chocolates.",movX2,300); 
      if(movX2 > 40){
      movX2 = movX2 - 2;}
      textSize(30);
      text("¿Que decides hacer?",200,movY);
      if(movY > 450){
      movY--;}
      fill(255,0,0);
       if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
      fill(0,255,0);}
      rect(570,530,150,50);
      fill(0);
      textSize(14);
      text("buscar billetes, pero \n robando chocolates", 575, 550);
      fill(255,0,0);
      if(mouseX>40 && mouseX<190 && mouseY>530 && mouseY<580){
    fill(0,0,255);}
    rect(40,530,150,50);
     fill(0);
     text("No buscar billetes",55,560);
      }

      else if(pantalla == 5){
      image(imagen5,0,0,800,600);
      fill(255);
      textSize(20);
      text("(pantalla5)",10,30);
      text("Por la noche, Charlie, al acabar de comer, iba a la habitacion de sus abuelos \n que siempre le contaban historias. Esa noche, Charlie le pregunto a sus abuelos \n sobre la fabrica de chocolate, y ellos le contaron lo mismo que le habia \n contado el padre,que esa fabrica era la mas grande del mundo, pero que \n anteriormente habia sido cerrada",25,movY5);
      if(movY5 < 200){
      movY5++;}
      text("Has decidido que Charlie no busque los billetes, entonces,  \n se quedara en su casa mirando la televisión junto a su familia, \n mientras día a día, van apareciendo los afortunados que han  \n encontrado ese billete dorado.",25,movY25);
      if(movY25 > 350){
      movY25--;}
      fill(255,0,0);
      if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
      rect(570,530,150,50);
      }
      fill(255);
      textSize(15);
      text("Continuar con  \n la historia", 590, 550);
      }

      else if(pantalla == 6){
    image(imagen6,0,0,800,600);
      fill(255);
      textSize(20);
      text("pantalla 6",10,30);
      text("Pero un día, el abuelo de Charlie,joe, le dijo que se acercara poco a poco \n  sin hacer ruido, ya que sus otros abuelos estaban durmiendo. Saco su \n  monedero que se encontraba abajo del colchon y le dio lo necesario para \n comprar los chocolates Wonka. Entonces, Charlie fue corriendo a la tienda \n  mas cercana y compro una tableta de chocolate. Cuando regreso \n  a la casa, el abuelo y el abrieron la tableta lentamente sin hacer ruido. \n Esa tableta contenía el billete dorado!!",movX6,movY6);
     if(movX6 < 50){
       movX6 = movX6 +2;}
       if(movY6 >250){
         movY6 = movY6 -2;}
      fill(255,0,0);
       if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
      rect(570,530,180,50);
       }
      fill(0);
      textSize(15);
      text("Continuar con la historia", 575, 560);
      }

      else if(pantalla == 7){
     image(imagen7,0,0,800,600);
      fill(255);
      textSize(24);
      text("pantalla7",10,30);
      text("Finalmente entraron a la fábrica y la comenzaron a recorrer,\n cuando de repente Charlie encuentra un lago de chocolate \n y entonces comienza a dudar si tomar de ese lago, o seguir \n recorriendo la fabrica junto a los otros chicos.",25,movY7);
      if(movY7 < 250){
        movY7 = movY7 + 2;}
      text("¿Que decides hacer?",200,450);
      fill(255,0,0);
       if(mouseX>40 && mouseX<190 && mouseY>530 && mouseY<580){
    fill(0,0,255);}
      rect(40,530,150,50);
      fill(0);
      textSize(15);
      text("tomar del lago \n de chocolate",57,550);
      fill(255,0,0);
      if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
      fill(0,255,0);}
      rect(570,530,150,50);
      fill(0);
      text("Seguir el recorrido", 580, 560);
      }
        
      else if(pantalla == 8){
      image (imagen8,0,0,800,600);
      textSize(24);
      fill(255);
      text("pantalla8",10,30);
      text("Charlie, despues de pensarlo mucho tiempo decidió finalmente \n separarse del grupo, ya que pensaba que nada malo le podia \n llegar a pasar, pero se equivoco. \n Sin darse cuenta, se acerco tanto al lago que se cayo!,\n y lo succiono una maquina que lo llevo a las afueras de la  fabrica.",movX8,230);
      if(movX8 > 25){
        movX8 = movX8 - 2;}
        if(mouseX > 0 && mouseX < 800 && mouseY > 500){
        fill(255,150);
        rect(0,500,800,600);
       fill(255,0,0);
      rect(280,520,250,50);}
      fill(0);
      textSize(15);
      text("Volver y elegir el otro camino",295,548);  
      }  
        
      else if(pantalla == 9){
      image(imagen5,0,0,800,600);
      textSize(20);
      fill(255);
      text("pantalla9",10,30);
      text("Charlie ha decidido seguir el recorrido junto a los otros chicos ganadores \n del billete dorado.",20,movY9);
      if(movY9 < 120){
        movY9++;}
      text("Charlie y su familia, vivirian y mandarian en la fabrica por el resto de sus vidas",20, movY92);
      if(movY92 > 350){
        movY92 --;}
        if(movY92 == 350){
           text(" Finalmente, despues de todo el recorrido a la fabrica, el señor Wonka le \n pregunto a Charlie donde vivia, y Charlie busco por el pueblo y le señalo \n su casa. Entonces, Wonka le pregunto seriamente si le gustaba la fabrica, \n y Charlie sin pensarlo de dijo que le encantaba, entonces Wonka le dijo \n que se la regalaba porque el ya no la queria mas.",aparecerX,aparecerY);
        }
        if(movY92 == 350){
          textSize(55);
        text("FIN",350,500);}
      fill(255,0,0);
      if(mouseX>280 && mouseX<530 && mouseY>520 && mouseY<570){
        fill(216,0,192);}
      rect(280,520,250,50);
      fill(0);
      textSize(16);
      text("volver al inicio de la historia",300,548);
      }  
        
      else if(pantalla == 10){  
      image(imagen3,0,0,800,600);
      textSize(20);
      fill(255);
      text("pantalla 10",10,30);
      text("Charlie decide robar los chocolates para encontrar esos billetes, \n ya que no tenía  mucha plata para comprarlos. Faltando una  \n semana para entrar a la fábrica, en la televisión confirman que  \n solo falta una persona en encontrar ese billete dorado, así que  \n Charlie se debía apurar en conseguirlo.",50,movY10);
      if(movY10 > 230){
        movY10 = movY10 - 2;}
      fill(250,0,0);
      if(mouseX>40 && mouseX<190 && mouseY>530 && mouseY<580){
    fill(0,0,255);}
      if(movY10 == 230){
       rect(40,530,150,50);}
      fill(0);
      textSize(15);
      if(movY10 == 230){
      text("robar chocolates  \n por la noche",50,550);
      }
      fill(255,0,0);
      if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
      fill(0,255,0);}
      if(movY10 == 230){
      rect(570,530,150,50);
      }
      fill(0);
      if(movY10 == 230){
      text("Robar chocolates  \n por el dia",580,550);
      }
      }
        
      else if(pantalla == 11){
      image(imagen3,0,0,800,600);
      textSize(20);
      fill(255);
      text("pantalla11",10,30);
      text("Has decidido que Charlie robe los chocolates por la noche. \n Charlie lo ha intentado, pero no ha podido, ya que los padres \n no lo han dejado salir por la noche. Entonces, deberá intentar \n robarlos por el dia.",25,movY11);
      if(movY11 < 250){
        movY11 = movY11 + 1;}
         text("Has decidido que Charlie robe los chocolates por la noche. \n Charlie lo ha intentado, pero no ha podido, ya que los padres \n no lo han dejado salir por la noche. Entonces, deberá intentar \n robarlos por el dia.",25,movY112);
         if(movY112 > 250){
           movY112 --;}
           text("Has decidido que Charlie robe los chocolates por la noche. \n Charlie lo ha intentado, pero no ha podido, ya que los padres \n no lo han dejado salir por la noche. Entonces, deberá intentar \n robarlos por el dia.",movX112,250);
            if(movX112 > 25){
           movX112 = movX112 - 2;}
      fill(255,0,0);
       if(mouseX>280 && mouseX<480 && mouseY>520 && mouseY<570){
         fill(60,210,160);}
      rect(280,520,200,50);
      fill(0);
      textSize(17);
      text("Elegir la otra opcion",300,550);
      } 
        
      else if( pantalla == 12){
        noTint();
      image(imagen12,0,0,800,600);
      textSize(24);
      fill(255);
      text("pantalla 12",10,30);
      text("Charlie, un dia, se desperto y sin hacer ruido se fue temprano de \n su casa para robar esos chocolates que el tanto deseaba. \n Tan solo faltando 5 días para que termine el tiempo, Charlie \n logra robarlos, pero lamentablemente, cuando estaba por salir \n del local lo descubre el dueño del local y se los saca. Charlie no \n ha podido conseguir el billete dorado que tanto deseaba.",25,movY12);
      if(movY12 > 270){
        movY12 = movY12 -2;}
       fill(255,0,0); 
       if(mouseX>280 && mouseX<530 && mouseY>520 && mouseY<670){
         fill(210,0,100);}
       rect(280,520,250,50);
       fill(0);
       textSize(15);
       text("Volver al inicio de la historia y \n escoger otro camino",300,540);     
      } 
        
        
}
void mouseClicked(){
  
  if(pantalla == 1){
  //boton creditos
 if(mouseX>40 && mouseX<190 && mouseY>530 && mouseY<580){
  pantalla = 2;} 
  //boton iniciar historia
  if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
  pantalla = 3;} 
   }
   
    
  else if(pantalla == 2){
  if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
  p2Y2 =  pos2inicial;
  p2Y = pos1inicial;
  pantalla = 1;} 
  
 }else if(pantalla == 3){
   if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
     posY = pos3inicial;
     posY2 = pos32inicial;
    pantalla = 4;} 
 }
  
  else if(pantalla == 4){
  if(mouseX>40 && mouseX<190 && mouseY>530 && mouseY<580){
    movX = pos4inicial;
   movX2 = pos42inicial;
    movY = pos43inicial;
  pantalla = 5;}
  if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
    movX = pos4inicial;
   movX2 = pos42inicial;
    movY = pos43inicial;
    pantalla = 10;}
  }
  
  else if(pantalla == 5){
  if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
    movY5 = pos5inicial;
    movY25 = pos52inicial;
  pantalla = 6;}
  }
  
  else if(pantalla == 6){
  if(mouseX>570 && mouseX<750 && mouseY>530 && mouseY<580){
    movX6 = pos6inicial;
    movY6 = pos62inicial;
  pantalla = 7;} 
  } 
  
  else if(pantalla == 7){
  if(mouseX>40 && mouseX<190 && mouseY>530 && mouseY<580){
    movY7 = pos7inicial;
  pantalla = 8;}
  if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
    pantalla = 9;
  }
  }
  
   else if(pantalla == 8){
  if(mouseX>280 && mouseX<530 && mouseY>520 && mouseY<570){
    movX8 = pos8inicial;
  pantalla = 7;} 
  
   }
 
   else if(pantalla == 9){
  if(mouseX>280 && mouseX<530 && mouseY>520 && mouseY<570){
    movY9 = pos9inicial;
    movY92 = pos92inicial;
  pantalla = 1;}
   }
  
    else if(pantalla == 10){
  if(mouseX>40 && mouseX<190 && mouseY>530 && mouseY<580){
    movY10 = pos10inicial;
  pantalla = 11;}
  if(mouseX>570 && mouseX<720 && mouseY>530 && mouseY<580){
    movY10 = pos10inicial;
  pantalla = 12;
  }
   }
 
   else if(pantalla == 11){
  if(mouseX>280 && mouseX<480 && mouseY>520 && mouseY<570){
  movY11 = pos11inicial;
movY112 = pos112inicial;
 movX11 = pos113inicial;
 movX112 = pos114inicial;
  pantalla = 10;}
   } 
    
    else if(pantalla == 12){
  if(mouseX>280 && mouseX<530 && mouseY>520 && mouseY<670){
    movY12 = pos12inicial;
  pantalla = 1;} 
    }
}

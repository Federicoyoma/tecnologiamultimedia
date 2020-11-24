class Textos {
  String textosPantallas [];
  String textosPantallaBotones[][];


  Textos() {  
    textosPantallas = new String [14];  
    textosPantallaBotones = new String[12][2];    
    inicializarTextosPantallas();
    inicializarTextosBotones();
  }  

  void inicializarTextosPantallas() { 
    textosPantallas[0] = "";
    textosPantallas[1] = "Aventura grafica realizada por Federico Yoma, estudiante de la carrera \n diseño multimedial en la unlp. \n El libro cuenta la historia de Charlie Bucket, un niño que vive con sus padres \n y abuelos en una casa bastante ruinosa, ya que carecen de recursos.\n Su situación empeora aún más cuando su padre es despedido de su trabajo.\n Entre tanta miseria, Charlie y su abuelo Joe sueñan con visitar la Fábrica de \n Chocolate del célebre Willy Wonka, un misterioso chocolatero que lleva años \n sin dejarse ver en público. Parecía imposible, pero sucede un milagro:\n Willy Wonka decide escoger a cinco niños afortunados para visitar la fábrica, \n con tan buena suerte que Charlie resulta ser uno de ellos. Una vez dentro,\n conocerán al excéntrico dueño de la fábrica, en una aventura \n que nunca podrán olvidar.";
    textosPantallas[2] = "Charlie era un niño muy pobre, que vivía acompañado por sus cuatro  abuelos \n y sus padres. La familia era tan pobre, que no se podia permitir comer variado, \n por lo tanto cada dia comia lo mismo. Por su cumpleaños Charlie solo recibía \n una sola  tableta de chocolate, ya que sus padres no podían comprarle nada  \n más. Charlie cada dia pasaba por la enorme fabrica de chocolate, y \n cuando olia aquel agradable aroma, cerraba los ojos y deseaba saborearlo.";
    textosPantallas[3] = "Un día, el padre de Charlie le cuenta que se abrirá la fábrica de \n chocolate del señor Wonka, que anteriormente había sido cerrada \n debido a que le robaban las recetas. \nLa fabrica permitiría que 5 niños de cualquier parte del mundo \n puedan visitarla, pero para poder entrar necesitaban encontrar \n billetes dorados dentro de los chocolates.";
    textosPantallas[4] = "Por la noche, Charlie, al acabar de comer, iba a la habitacion de sus abuelos \n que siempre le contaban historias. Esa noche, Charlie le pregunto a sus abuelos \n sobre la fabrica de chocolate, y ellos le contaron lo mismo que le habia \n contado el padre,que esa fabrica era la mas grande del mundo, pero que \n anteriormente habia sido cerrada \n Has decidido que Charlie no busque los billetes, entonces,  \n se quedara en su casa mirando la televisión junto a su familia, \n mientras día a día, van apareciendo los afortunados que han  \n encontrado ese billete dorado.";
    textosPantallas[5] = "Pero un día, el abuelo de Charlie,joe, le dijo que se acercara poco a poco \n  sin hacer ruido, ya que sus otros abuelos estaban durmiendo. Saco su \n  monedero que se encontraba abajo del colchon y le dio lo necesario para \n comprar los chocolates Wonka. Entonces, Charlie fue corriendo a la tienda \n  mas cercana y compro una tableta de chocolate. Cuando regreso \n  a la casa, el abuelo y el abrieron la tableta lentamente sin hacer ruido. \n Esa tableta contenía el billete dorado!!";
    textosPantallas[6] = "";
    textosPantallas[7] = "Charlie, despues de pensarlo mucho tiempo decidió finalmente \n separarse del grupo, ya que pensaba que nada malo le podia \n llegar a pasar, pero se equivoco. \n Sin darse cuenta, se acerco tanto al lago que se cayo!,\n y lo succiono una maquina que lo llevo a las afueras de la  fabrica.";
    textosPantallas[8] = "Charlie ha decidido seguir el recorrido junto a los otros chicos ganadores \n del billete dorado. \n Charlie y su familia, vivirian y mandarian en la fabrica por el resto de sus vidas \n Finalmente, despues de todo el recorrido a la fabrica, el señor Wonka le \n pregunto a Charlie donde vivia, y Charlie busco por el pueblo y le señalo \n su casa. Entonces, Wonka le pregunto seriamente si le gustaba la fabrica, \n y Charlie sin pensarlo de dijo que le encantaba, entonces Wonka le dijo \n que se la regalaba porque el ya no la queria mas.";
    textosPantallas[9] = "Charlie decide robar los chocolates para encontrar esos billetes, \n ya que no tenía  mucha plata para comprarlos. Faltando una  \n semana para entrar a la fábrica, en la televisión confirman que  \n solo falta una persona en encontrar ese billete dorado, así que  \n Charlie se debía apurar en conseguirlo.";
    textosPantallas[10] = "Has decidido que Charlie robe los chocolates por la noche. \n Charlie lo ha intentado, pero no ha podido, ya que los padres \n no lo han dejado salir por la noche. Entonces, deberá intentar \n robarlos por el dia.";
    textosPantallas[11] = "Charlie, un dia, se desperto y sin hacer ruido se fue temprano de \n su casa para robar esos chocolates que el tanto deseaba. \n Tan solo faltando 5 días para que termine el tiempo, Charlie \n logra robarlos, pero lamentablemente, cuando estaba por salir \n del local lo descubre el dueño del local y se los saca. Charlie no \n ha podido conseguir el billete dorado que tanto deseaba.";
  }  

  void inicializarTextosBotones() {
    textosPantallaBotones[0][0] = "Creditos";
    textosPantallaBotones[0][1] = "iniciar historia";
    textosPantallaBotones[1][1] = "Volver";
    textosPantallaBotones[2][1] = "Continuar leyendo";
    textosPantallaBotones[3][0] = "No buscar billetes";
    textosPantallaBotones[3][1] = "Buscar robando \n chocolates";
    textosPantallaBotones[4][1] = "continuar con la \n historia";
    textosPantallaBotones[5][1] = "Continuar con la \n historia";
    textosPantallaBotones[6][0] = "Tomar del lago de \n chocolate";
    textosPantallaBotones[6][1] =  "Seguir el recorrido";
    textosPantallaBotones[7][0] = "Volver al inicio \n de la historia";
    textosPantallaBotones[8][0] = "Volver al inicio de \n la historia";
    textosPantallaBotones[9][0] = "Robar chocolate \n por la noche";
    textosPantallaBotones[9][1] =  "Robar chocolate \n por el dia";
    textosPantallaBotones[10][0] = "Elegir la otra opcion";
    textosPantallaBotones[11][0] = "Volver al inicio \n de la historia.";
  }  

  String getTextoParaPantallaBoton(int pantalla, int boton) {
    return textosPantallaBotones[pantalla][boton];
  }

  String getTextoParaPantalla(int pantalla) {
    return textosPantallas[pantalla];
  }
}  

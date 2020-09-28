class Tablero{
  int dist;
  int dist2;
  int cantidadCeldas = 10;
  Celda [][] celdas = new Celda [cantidadCeldas][cantidadCeldas];
  
  
  Tablero(){
    dist = width/cantidadCeldas;
    dist2 = height/cantidadCeldas;
    
    for(int i=0; i<cantidadCeldas; i++){
      for(int j=0; j<cantidadCeldas; j++){
        celdas[i][j] = new Celda(i*dist,j*dist2,dist,dist2); 
      
      }
    }
  }
  
  void dibujar(){
    for(int i=0; i<cantidadCeldas; i++){
      for(int j=0; j<cantidadCeldas; j++){
        celdas[i][j].dibujar();
      }
    }
  }
  
  void teclaPresionada(){
    
  }
  
}

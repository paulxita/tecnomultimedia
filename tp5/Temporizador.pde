class Temporizador{
 float temporizador;
  Temporizador(float set){  
   temporizador = set;
  }
  float getTiempo(){
  return(temporizador);
  }
  
void establecerTiempo(float e){
    temporizador = e;
}

void contador(){
 temporizador += 1/frameRate;    
  } 
}

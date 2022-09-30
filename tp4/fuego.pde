class fuego{
  PImage fueguito;
  boolean escupir = false;
  float boladefuegox; //posición inicial
  float boladefuegoy; //posicion inicial
  float velocidad = 2.0;
  
  fuego(){
    fueguito = loadImage("fuego2.png");
  }
 void dibujar(){
 pushStyle();
 boladefuegox = mouseX+12;
 //boladefuegoy= mouseY+100;
 image(fueguito,boladefuegox,boladefuegoy);
 popStyle();
 
 
 
 }
 void actualizar(){
   if(mousePressed){
     escupir = true;
   }
   if (escupir == true) {
     boladefuegoy = boladefuegoy +10;
   }
   if (boladefuegoy >500){
     boladefuegoy = 150;
     escupir = false;
   }
 }

 }

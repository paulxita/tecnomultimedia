class castillo{
  PImage castle;
  dragon objeto1;
  fuego objeto2;
  nubes objeto3;
  castillo(){
    castle = loadImage("castillo2.png");
    
    objeto1 = new dragon();
    objeto2 = new fuego();
    objeto3 = new nubes();
  }
 void dibujar(){
 pushStyle();
 image(castle,0,0);
 objeto3.dibujar();
 objeto1.dibujar();
 objeto2.dibujar();
 objeto2.actualizar();
 popStyle();
 }
 
   
 
 }

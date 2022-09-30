class dragon{
  PImage dragoncito;
  
  dragon(){
    dragoncito = loadImage("dragon.png");
  }
 void dibujar(){
 pushStyle();
 image(dragoncito,mouseX,50);
 popStyle();
 }
 }

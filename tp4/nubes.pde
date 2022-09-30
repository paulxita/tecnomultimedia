class nubes{
  PImage nube;
  PImage nube2;
  PImage nube3;
  float y = 55.5;
  float radio = 55.5;
  float velocidad = 2;
  nubes(){
    nube = loadImage("nubes2.png");
    nube2 = loadImage("nubes3.png");
    nube3 = loadImage("nubes2.png");
  }
 void dibujar(){
 pushStyle();
 image(nube,y,50);
 image(nube2,y-350,150);
 image(nube3,y-620,20);
 popStyle();
 y = y + velocidad;

 if (y > width + radio){
    y = -radio;
  }
 }
 }

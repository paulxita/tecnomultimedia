class Pelotas{
  PImage bola;
  Pelotas(){
    bola = loadImage("obstaculo3.png");
  }
  void dibujar(){
    pushStyle();
    image(bola,400,mouseY);
    popStyle();
  }
}

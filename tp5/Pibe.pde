class Pibe{
  PImage nene;
  Pibe(){
    nene = loadImage("player2.png");
}
void dibujar(){
  pushStyle();
  image(nene,mouseX,300);
  popStyle();
}
}

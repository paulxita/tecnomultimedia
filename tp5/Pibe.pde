class Pibe {
  PImage nene;
  float posX, posY, tamX, tamY;
  Pibe(float posX, float posY, float tamX, float tamY) {
    this.posX = posX;
    this.posY = posY;
    this.tamX = tamX;
    this.tamY = tamY;
    nene = loadImage("player2.png");
  }
  
void dibujarnene() {
    pushStyle();
    imageMode(CENTER);
    image(nene, posX, posY);
    popStyle();
  }
  
void mover(){
  posX = mouseX;
  }
}

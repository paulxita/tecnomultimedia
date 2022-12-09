class Pelotas {
  PImage bola;
  float posX, posY, velocidad, tamX, tamY;
  Pelotas(float posX, float posY, float tamX, float tamY) {
    bola = loadImage("obstaculo3.png");
    this.posX = posX;
    this.posY = posY;
    this.tamX = tamX;
    this.tamY = tamY;
  }
  
void dibujar() {
    pushStyle();
    image(bola, posX, posY);
    popStyle();
  }
  //valores de la colision
  boolean colision(float posX_, float posY_, float tamX_, float tamY_) {
    
    if (posY-tamY/2 < posY_+tamY_/2 &&
      posY+tamY/2 > posY_-tamY_/2 &&
      posX-tamX/2 < posX_-tamX_/2 &&
      posX+tamX/2 > posX_-tamX_/2) {
      posY= -50;
      posX= random (0, 600);
      return true;
    } else {
      return false;
    }
  }
void mover() {
    posY -= velocidad;
    velocidad = random(2, 4);
  }

void actualizar() {
    if (posY < 200) {
      posY = 600;
      posX = random(0, width);
    }
  }
}

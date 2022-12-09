import ddf.minim.*;
Minim minim;
AudioPlayer musica;
AudioPlayer sonidog;
AudioPlayer sonidop;
Juego quemados;

void setup(){
  quemados = new Juego();
  size(800,512);
  minim = new Minim(this);
  musica = minim.loadFile("thegauntlet2.mp3");
  sonidog = minim.loadFile("ganastewii.mp3");
  sonidop = minim.loadFile("perdistejaja.mp3");
}

void draw(){
  quemados.dibujar();

}

void mousePressed(){
 quemados.pressed();
}

 void keyPressed(){
 quemados.keyPressed();
}

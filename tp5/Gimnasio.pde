class Gimnasio{
  String estado;
  PImage gym;
  Pibe objeto1;
  Pelotas objeto2;
  Gimnasio(){
    gym = loadImage("lugar2.jpg");
    objeto1 = new Pibe();
    objeto2 = new Pelotas();
  
}
void inicio(){
  pushStyle();
  image(gym,0,0);
  textAlign(CENTER);
  fill(255,255,255);
  textSize(60);
  text("QUEMADOS",400,250);
  textSize(25);
  text("Esquiva las pelotas",400,300);
  rect(325,330,150,75);
  fill(0,0,0);
  textSize(40);
  text("jugar",400,380);
  
  //if 
}
void jugar(){
  pushStyle();
  image(gym,0,0);
  objeto1.dibujar();
  objeto2.dibujar();
  popStyle();
}
}

//declaracion

int cantImagen = 29;
int principiodesecuencia = 0;
PImage [] gif = new PImage[cantImagen];
float y = 58.9;
float radio = 55.8; 
float velocidad = 5;
boolean ojos = false;
PImage ojitos;
PImage gato;
PImage perdiste;
PImage ganaste;
String estado;

void setup(){
  //asignacion
  ellipseMode(RADIUS);
  textAlign(CENTER);
  ojitos = loadImage("ojitos.png"); //pieza faltante del fondo
  gato = loadImage("gato.png"); //fondo de juego
  perdiste = loadImage("gatitoperdiste2.png");
  ganaste = loadImage("gatitoganaste2.png");
  //secuencia de imagenes para inicio y creditos
   for(int i = 0; i < gif.length; i++) {
    gif[i] = loadImage("cat" + i + ".png");
   }
  size(616,636);
  estado = "inicio";
}

void draw(){
  //pantalla inicial
  if(estado.equals("inicio") ){
    image(gif[principiodesecuencia],-150,0);
    principiodesecuencia = (principiodesecuencia+1)%gif.length;
    textSize(40);
    fill(#4F8CAA);
    text("Completa la cara \n del gatito",width/2,200);
    
     //boton para comenzar a jugar
     pushStyle();
     noStroke();
    if( dist( mouseX, mouseY, width/2, height/2+100) <= 50 ){
      fill(#8FC6E0);
    }else{
      fill(#4F8CAA);
    }
    rect( 230, height/2+70, 150, 75 );
    fill(255);
    textSize(30);
    text("JUGAR",305,height/2+120);
    popStyle();
  }  
  //pantalla de creditos
  else if (estado.equals("creditos")){
    image(gif[principiodesecuencia],-150,0);
    principiodesecuencia = (principiodesecuencia+1)%gif.length;
    textSize(40);
    fill(#4F8CAA);
    text("Programado y diseñado \n por Paula Torres \n <3",width/2,200);
    
    //boton para regresar al inicio
    textSize(30);
    pushStyle();
    noStroke();
    if( dist( mouseX, mouseY, width/2, height/2+100) <= 50 ){
      fill(#8FC6E0);
    }else{
      fill(#4F8CAA);
    }
    rect( 230, height/2+70, 150, 75 );
    fill(255);
    text("INICIO",305,height/2+120);
    popStyle();
  }
  //pantalla GANASTE
  else if (estado.equals("ganar")){
    background(gato);
    image(ganaste,183,25);
    textSize(50);
    fill(#91E08A);
    text("¡GANASTE!",width/2,100);
    image(ojitos, y,290);
    
    
    pushStyle();
    strokeWeight(5);
    textSize(15);
    
    //boton para volver al inicio
    if( dist( mouseX, mouseY, 560, 580) < 40 ){
      stroke(#8FC6E0);
      fill(#4F8CAA);
    }else{
      stroke(#4F8CAA);
      fill( #8FC6E0 );
    }
    rect(490, 560, 100, 50 );
    fill(255);
    text("Inicio",540,590);
    
    //boton para ir a los creditos
     if( dist( mouseX, mouseY, 70, 580) < 40 ){
      stroke(#8FC6E0);
      fill(#4F8CAA);
    }else{
      stroke(#4F8CAA);
      fill(#8FC6E0 );
    }
    rect(25, 560, 100,50);
    fill(255);
    text("Créditos",75,590);
    
    //boton para volver a jugar
     if( dist( mouseX, mouseY, 320, 580) < 40 ){
      stroke(#8FC6E0);
      fill(#4F8CAA );
    }else{
      stroke(#4F8CAA);
      fill( #8FC6E0 );
    }
    
    rect(270, 560, 100, 50);
    fill(255);
    text("Reintentar",320,590);
    popStyle();
  } 
  //pantalla PERDISTE
  else if (estado.equals("perder")){
    background(gato);
    image(perdiste,183,25);
    textSize(50);
    fill(#E0A08A);
    text("¡PERDISTE!",width/2,100);
    image(ojitos, y,290);
     pushStyle();
     strokeWeight(5);
     textSize(15);
     
     //boton para volver al inicio
    if( dist( mouseX, mouseY, 560, 580) < 40 ){
      stroke(#8FC6E0);
      fill(#4F8CAA );
    }else{
      stroke(#4F8CAA);
      fill(#8FC6E0 );
    }
    rect(490, 560, 100, 50 );
    fill(255);
    text("Inicio",540,590);
    
    //boton para ir a los creditos
     if( dist( mouseX, mouseY, 70, 580) < 40 ){
      stroke(#8FC6E0);
      fill(#4F8CAA);
    }else{
      stroke(#4F8CAA);
      fill( #8FC6E0 );
    }
    rect(25, 560, 100,50);
    fill(255);
    text("Créditos",75,590);
    
    //boton para volver a jugar
     if( dist( mouseX, mouseY, 320, 580) < 40 ){
      stroke(#8FC6E0);
      fill( #4F8CAA);
    }else{
      stroke(#4F8CAA);
      fill( #8FC6E0 );
    }
    rect(270, 560, 100, 50);
    fill(255);
    text("Reintentar",320,590);
    popStyle();
    
  }
  else if(estado.equals("jugando") ){
  background(gato);
  textSize(15);
  fill(255);
  text("Presiona cualquier tecla para jugar",width/2,50);
  
  y = y + velocidad;

  if(keyPressed){
    ojos = false;
  } else {
    ojos = true;
  }
  if (ojos == true){
    image(ojitos, y,290);
    
  //para ver donde se encuentra la colision
  //pushStyle();
  //circle(y+145,420,20);
  //circle(318,420,20);
  //popStyle();
  }
  if (y > width + radio){
    y = -radio;
  }
}
}
void mousePressed(){
  //pantalla de inicio comenzar juego
  if( estado.equals("inicio") && dist(mouseX, mouseY, width/2, height/2+100) <= 50 ){
    estado = "jugando";
  }
    //en la pantalla de creditos volver al inicio
  if ( estado.equals("creditos") && dist(mouseX, mouseY, width/2, height/2+100) <= 50 ){
    estado = "inicio";
  } 
  //GANASTE
  //creditos
  if( estado.equals("ganar") && dist(mouseX, mouseY, 70, 580) <= 40 ){
    estado = "creditos";
  }
  //inicio
    if( estado.equals("ganar") && dist(mouseX, mouseY, 560, 580) <= 40){
    estado = "inicio";
  }
  //reintentar
  if( estado.equals("ganar") && dist(mouseX,mouseY, 320, 580) <= 40 ){
    estado = "jugando";
  }
  //PERDISTE
  //creditos
   if( estado.equals("perder") && dist(mouseX, mouseY, 70, 580) <= 40 ){
    estado = "creditos";
  }
  //inicio
  if( estado.equals("perder") && dist(mouseX, mouseY, 560, 580) <= 40 ){
    estado = "inicio";
  }
  //reinentar
  if (estado.equals("perder") && dist(mouseX,mouseY, 320, 580) <= 40){
    estado = "jugando";
  

  }
  
}
void keyPressed(){
  if(dist(y+145,420,318,420) < 2){
    estado = "ganar";
  }
  if(dist(y+145,420,318,420) > 2){
    estado = "perder"; }
}

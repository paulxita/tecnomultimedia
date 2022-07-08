//declaracion

int cantImagen = 29;
int principiodesecuencia = 0;
PImage [] gif = new PImage[cantImagen];
float y = 58.9;
float radio = 55.8; 
float velocidad = 5;
boolean ojos = false;
boolean nariz = true;
PImage ojitos;
PImage gato;
String estado;
//float[] x = {310,120,75};
//float[] y = {130,243,25};



void setup(){
  //asignacion
  ellipseMode(RADIUS);
  textSize(24);
  textAlign(CENTER);
  ojitos = loadImage("ojitos.png");
  gato = loadImage("gato.png");
   for(int i = 0; i < gif.length; i++) {
    gif[i] = loadImage("cat" + i + ".png");
   }
  size(616,636);
  estado = "inicio";
}

void draw(){
  //invocacion
  //frameRate(50);
  if(estado.equals("inicio") ){
    background(0);
    image(gif[principiodesecuencia],-150,0);
    principiodesecuencia = (principiodesecuencia+1)%gif.length;
    textSize(50);
    text("COMPLETA LA CARA  DEL GATITO",200,200);
     text( estado, width/2, height/2 );  
     pushStyle();
    if( dist( mouseX, mouseY, width/2, height/2+100) <= 25 ){
      fill( 200, 0, 0 );
    }else{
      fill( 155 );
    }
    rect( width/2.5, height/2+70, 100, 50 );
    popStyle();
  }  
  
  else if (estado.equals("ganar")){
    background(gato);
    textSize(50);
    text("GANASTE",308,200);
    image(ojitos, y,290);
    //noLoop();
    noStroke();
    pushStyle();
    if( dist( mouseX, mouseY, 560, 580) < 40 ){
      fill( 100, 0, 50 );
    }else{
      fill( 155 );
    }
    rect(490, 560, 100, 50 );
    
     if( dist( mouseX, mouseY, 70, 580) < 40 ){
      fill( 100, 0, 50 );
    }else{
      fill( 155 );
    }
    rect(25, 560, 100,50);
    
     if( dist( mouseX, mouseY, 320, 580) < 40 ){
      fill( 100, 0, 50 );
    }else{
      fill( 155 );
    }
    
    rect(270, 560, 100, 50);
    popStyle();
  } 
  
  else if (estado.equals("perder")){
    background(gato);
    textSize(50);
    text("PERDISTE",308,100);
    image(ojitos, y,290);
     pushStyle();
     noStroke();
    if( dist( mouseX, mouseY, 560, 580) < 40 ){
      fill( 100, 0, 50 );
    }else{
      fill( 155 );
    }
    rect(490, 560, 100, 50 );
    
     if( dist( mouseX, mouseY, 70, 580) < 40 ){
      fill( 100, 0, 50 );
    }else{
      fill( 155 );
    }
    rect(25, 560, 100,50);
    
     if( dist( mouseX, mouseY, 320, 580) < 40 ){
      fill( 100, 0, 50 );
    }else{
      fill( 155 );
    }
    
    rect(270, 560, 100, 50);
    
    popStyle();
    
  }
  else if(estado.equals("jugando") ){
  background(gato);
  
  //if frameCount >= 600 {
   // image(ojitos,--frameCount*4,200);
  //}
  y = y + velocidad;

  if(keyPressed){
    ojos = false;
  } else {
    ojos = true;
  }
  if (ojos == true){
    image(ojitos, y,290);
    //colision(y,270);
    
  //para ver donde se encuentra la colision
  pushStyle();
  circle(y+150,300,20);
  circle(315,300,20);
  popStyle();
  }
  if (ojos == false){
    image(ojitos, y,270);
    //noLoop();
    
  }
  if (y > width + radio){
    y = -radio;
  }
 
}
}
void mousePressed(){
  if( estado.equals("inicio") && dist(mouseX, mouseY, width/2, height/2+100) <= 25 ){
    estado = "jugando";
  }
  if( estado.equals("ganar") && dist(mouseX, mouseY, width/2, height/2+100) <= 25 ){
    estado = "jugando";
  }
  if( estado.equals("perderr") && dist(mouseX, mouseY, width/2, height/2+100) <= 25 ){
    estado = "inicio";
  }
  
}
void keyPressed(){
  if(dist(y+150,300,315,300) < 5){
    estado = "ganar";
  }
  if(dist(y+150,300,315,300) > 5){
    estado = "perder"; }
  
}
void colision(){
  
  
}

//mi video https://www.youtube.com/watch?v=gXMsDqd3OwE
//variables para las figuras
float x, y;
boolean ellipse = false;

void setup(){
  size(600,600);
  ellipseMode(CENTER);
//valor de variables para las figuras
  x = width/2; 
  y = height/2;
 
}
void draw(){
  noCursor();
  println(frameCount);
  println(mouseX,mouseY);
  
  //fondo de color cambiante dependiendo de donde se encuentre el mouse
  float colour = map(mouseX,mouseY,width,110,210);
  background(colour);
  //caracteristicas de los circulos del centro
  fill(random(0,255),random(0,255),random(0,255));
  circle(300,300,mouseX*1.2);
  fill(0,80);
  circle(300,300,mouseX/1.8);
  
  //serie de circulos coloreados de manera aleatoria
  fill(random(0,255),random(0,255),random(0,255));
  noStroke();
  float lineasx = 100; //cant de circulos dibujados en el eje x
  float lineasy = 100; //cant de circulos dibujados en el eje y
  float lineasw = width/50; //espacio de ancho entre los circulos
  float lineash = height/50; //espacio de alto entre los circulos
  for(int i =0; i < lineasx; i++){
    for(int j = 0; j < lineasy; j++){
      float posX = lineasw *i;
      float posY = lineash *j;
      pushMatrix();
      translate(posX,posY);
      ellipse(0,0,10,10);
      popMatrix();
}
  } 
  for (int g = 0; g < 360; g+=30) {
  pushMatrix(); // abro posibilidad de rotaciones y traslaciones
  //funciones para rotar las figuras
  translate(x,y); 
  rotate(radians(g));
  //caracteristicas de las ellipses centrales
  noFill();
  stroke(0);
  strokeWeight(15);
  ellipse(0, 0, mouseX, mouseY);
  //caracteristicas de triangulos y ellipses secundarias
  noStroke();
  fill(0,220);
  triangle(600,0,mouseX,0,600,mouseY);
  fill(0,240);
  //para conseguir que las ellipses secundarias se achiquen
  if(mousePressed){
    ellipse = true;
  } else {
    ellipse = false;
  }
  if( ellipse == false){
    ellipse(mouseX,mouseY,30,frameCount);
  } 
   if (ellipse == true){
  ellipse(mouseX,mouseY,30,frameCount--);
   }
  popMatrix(); //cierro y vuelvo el origen de coordenadas al punto 0,0;
  }
}
void keyPressed(){
  reset();
}
void reset(){
  size(600,600);
  ellipseMode(CENTER);
   x = width/2; 
  y = height/2;
  mouseX = 0;
  mouseY = 0;
}
  

class Juego {
  PImage gym;
  PImage gym2;
  PFont fuente;
  PFont fuente2;
  int estado = 0;
  int strikes = 0;
  Pelotas [] pelotas = new Pelotas [5];

  Pibe nene;
  Temporizador tiempo;
  Juego() {
    gym = loadImage("lugar2.jpg");
    gym2 = loadImage("lugar3.jpg");
    fuente = createFont("titulos2.ttf", 70);
    fuente2 = createFont("twdfuente1.ttf", 30);
    nene = new Pibe(mouseX, 350, 50, 50);
    tiempo = new Temporizador(0);

    for (int i = 0; i < pelotas.length; i++) {
      pelotas[i] = new Pelotas (random(0, 600), random(530, 512), 60, 60);
    }
  }

void dibujar() {
    println(strikes);

    if (estado == 0) {
      musica.play();
      inicio();
      
    } else if (estado == 1) {  
      jugando();
      
    } else if (estado == 2) {
      musica.rewind();
      sonidog.play();
      ganaste();
      
    } else if (estado == 3) {
      musica.rewind();
      sonidop.play();
      perdiste();

    } else if (estado == 4) {
      musica.rewind();
      creditos();
    }
  }
  
void inicio() {
    estado = 0;
    pushStyle();
    textAlign (CENTER);
    background(gym2); 
    noStroke();
    fill(#F00000, 200);
    rect (330, 360, 138, 56);
    fill(255);
    textSize(40);
    text("JUGAR", 400, 400);
    textAlign (CENTER);
    fill(0);
    textFont(fuente);
    fill(240, 0, 0);
    text ("QUEMADOS", width/2, 160);
    fill(255, 100);
    noStroke();
    rect(80, 210, 650, 100);
    fill(0);
    textFont(fuente2);
    text("- Aguantá 10 segundos esquivando las pelotas", width/2, 250);
    text("- 3 strikes y estás FUERA", width/2, 290);
    popStyle();
  }
  
void pressed() {
    float d1 = dist(mouseX, mouseY, 400, 400);
    int r1 = 50/2;
    if (d1 < r1) {
      estado = 1;
    }
  }
  
void keyPressed() {
    if (estado == 3 || estado == 2) {
      if (key == 'c' || keyCode == 'c') {
        estado = 4;
        creditos();
      }
    }
    if (estado == 2 || estado == 3 || estado == 4 ) {
      if (key == ' ') {
        estado = 1;
        reiniciar();
      }
    }
  }
  
void ganaste() {
    estado = 2;
    textSize(60);
    textAlign (CENTER);
    textFont(fuente);
    textSize(100);
    fill(240, 0, 0);
    text("BIEN HECHO!", width/2, height/2+20);
    fill(0);
    textFont(fuente2);
    textSize(20);
    text("Apretá c para ver los créditos", 150, 490);
    text("Apretá espacio para reiniciar", 650, 490);
  }

void perdiste() {
    estado = 3;
    background(gym2);
    //textSize(80);
    textAlign (CENTER);
    textFont(fuente);
    textSize(100);
    fill(240, 0, 0);
    text("FUERA!", width/2, height/2+20);  
    fill(0);
    textFont(fuente2);
    textSize(20);
    text("Apretá c para ver los créditos", 150, 490);
    text("Apretá espacio para reiniciar", 650, 490);
  }
  
void creditos() {
    estado = 4;
    background(gym2);
    fill(255, 150);
    noStroke();
    rect(190, 50, 420, 370);
    fill(0);
    textFont(fuente2);
    textSize(25);
    text("Paula Torres", width/2, 100 );
    text("Legajo: 91450/6", width/2, 170);
    text("Comisión 2", width/2, 240);
    text("Prof.: Matías Jauregui Lorda", width/2, 310);
    text("Tobías Albirosa", width/2, 380);
    textSize(20);
    text("Apretá espacio para reiniciar", width/2, 490);
  }

void jugando() {
    estado = 1;
    background(gym);
    textAlign(CENTER);
    tiempo.contador();
    nene.dibujarnene();
    nene.mover();
    text("TIEMPO:   " +tiempo.getTiempo(), 150, 60);
    for (int i = 0; i < 5; i++) {
      pelotas[i].dibujar ();
      pelotas[i].mover () ;
      pelotas[i].actualizar();
      
      if (pelotas[i].colision(mouseX, nene.posY, nene.tamX, nene.tamY)) {
        strikes +=1;
      }
    }      
    if (strikes == 3) {
      estado = 3;
    }

    if (tiempo.getTiempo() >= 10) {
      estado = 2;
    }
    fill(0);
    textSize(25);
    text("STRIKES:  "+strikes, 680, 60);
    println(strikes); 
  }

void reiniciar() {
    for (int m = 0; m < pelotas.length; m++) {
      pelotas[m] = new Pelotas (random(0, 800), random(512+height), 100, 100);
    }
    estado = 0;
    strikes = 0;
    tiempo = new Temporizador(0);
  }
}

import fisica.*;

FWorld mundo;

int PUERTO_OSC = 12345;

Receptor receptor;
Administrador admin;

FBox miaubel;
Juego juegoMiaubel;
GatosClass Gatos;
Perros rinoyperros;
Techos techos;
Vidaclass vidas;

PImage abuela, fondo, mano;
int abuX, abuY;
int punto = 0;
int totalvidas = 3;
ArrayList<FCircle> gatosList = new ArrayList<FCircle>();
ArrayList<FCircle> perrosList = new ArrayList<FCircle>();


//███████ ███████ ████████ ██    ██ ██████  
//██      ██         ██    ██    ██ ██   ██ 
//███████ █████      ██    ██    ██ ██████  
//     ██ ██         ██    ██    ██ ██
//███████ ███████    ██     ██████  ██

void setup() {
  size(1050, 700);
  Fisica.init(this);

  mundo = new FWorld();
  mundo.setEdges();
  mundo.setGravity(100, 200);
  
  setupOSC(PUERTO_OSC);

  receptor = new Receptor();
  admin = new Administrador(mundo);

  fondo = loadImage("fondo.png");
  fondo.resize(1050,700);

  miaubel = new FBox(300, 150);
  miaubel.setPosition(width/2, height - 80);
  miaubel.setRestitution(0);
  mundo.add(miaubel);
  miaubel.setStatic(true);

  abuela = loadImage("miaubel.png");

  miaubel.attachImage(abuela);

  Gatos = new GatosClass();
  Gatos.imgGatos();
  rinoyperros = new Perros();
  rinoyperros.imgPerros();
  gatosList = new ArrayList<FCircle>();
  perrosList = new ArrayList<FCircle>();
  juegoMiaubel = new Juego();
  techos = new Techos();

  techos.techosvoid();

}

//██████  ██████   █████  ██     ██ 
//██   ██ ██   ██ ██   ██ ██     ██ 
//██   ██ ██████  ███████ ██  █  ██ 
//██   ██ ██   ██ ██   ██ ██ ███ ██ 
//██████  ██   ██ ██   ██  ███ ███  
void draw() {
  image (fondo, 0, 0);
  
  receptor.actualizar(mensajes); //  


  // Eventos de entrada y salida
  for (Blob b : receptor.blobs) {

    if (b.entro) {
      admin.crearPuntero(b);
      println("--> entro blob: " + b.id);
    }
    if (b.salio) {
      admin.removerPuntero(b);
      println("<-- salio blob: " + b.id);
    }
    
    admin.actualizarPuntero(b);
  }
  
  mundo.step();
  mundo.draw();

  juegoMiaubel.funcionar();

}

void contactStarted(FContact c) {
  FBody ball = null;
  if (c.getBody1() == miaubel) {
    if (c.getBody2().getName().equals("gato")) {
      ball = c.getBody2();
      punto +=1;
    } else if (c.getBody2().getName().equals("perro")) {
      punto -=1;
      totalvidas -=1;
    }
  } else if (c.getBody2() == miaubel) {
    if (c.getBody1().getName().equals("gato")) {
      ball = c.getBody1();
      punto +=1;
    } else if (c.getBody1().getName().equals("perro")) {
      punto -=1;
      totalvidas -=1;
    }
  }

  if (ball == null) {
    return;
  }

  ball.setFill(30, 190, 200);
  mundo.remove(ball);
}

void keyPressed() {
  juegoMiaubel.keyPressed();
}

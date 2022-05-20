import ddf.minim.*; 
Minim minim ;
AudioSample sound ;

int maxImages = 33;
int imageIndex = 0;
PImage [] images = new PImage[maxImages];
PImage skull;
PFont font;
PFont font2;
PFont font3;
int titulo;
int miVariable;
int thanks = 3650;
String a ,b ,c , d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, a1, b1, c1, d1, e1, f1, g1, h1, i1, j1, k1, l1, m1, n1, o1, p1, q1, r1, s1, t1, u1, v1, w1, x1, y1, z1, a2, b2, c2, d2, e2;

void setup(){
  size(900,506);
  noCursor();
  frameRate(50);
  //musiquita
  minim = new Minim (this) ; 
  sound = minim.loadSample ("inthewater.mp3",512);
  //secuencia de imagenes
   for(int i = 0; i < images.length; i++) {
    images[i] = loadImage("twdtitulos" + i + ".png");
  }
  //imagen para el cursor
  skull = loadImage("skull.png");
  //textos
  textAlign(CENTER);
  a = "DIRECTED BY";
  b = "Dennis Lenart";
  c = "WRITTEN BY";
  d = "Nick Breckon";
  e = "Andrew Grant";
  f = "DESIGNED BY";
  g = "Mark Darin";
  h = "Sean Ainsworth";
  i = "ART DIRECTION";
  j = "Derek Sakai";
  k = "MUSIC BY";
  l = "Jared Emerson-Johnson";
  m = "CONTENT PROGRAMMING";
  n = "Randy Tudor - Lead";
  o = "Jason Kim";
  p = "Andrew Langley";
  q = "Carl Muckenhoupt";
  r = "David T. Potter";
  s = "Grady Standard";
  t = "ANIMATION";
  u = "Jessica Brezzo - Lead";
  v = "Patrick Bryan";
  w = "Janel Drewis";
  x = "Jed Heuer";
  y = "Armand Lluch";
  z = "Justin Rosenthal-Kambic";
  a1 = "Ryan Rasmussen";
  b1 = "Mike Tjosvold";
  c1 = "Pete Tsaykel";
  d1 = "Chris Waltner";
  e1 = "EXECUTIVE PRODUCERS";
  f1 = "Dan Connors";
  g1 = "Kevin Brunner";
  h1 = "PRODUCERS";
  i1 = "Sara Guinness";
  j1 = "Kristen Kennedy";
  k1 = "CAST";
  l1 = "CLEMENTINE";
  m1 = "Paula Torres";
  n1 = "LUKE";
  o1 = "Jeremías Toré";
  p1 = "OMID";
  q1 = "Jeremías Lanza";
  r1 = "CHRISTA";
  s1 = "Clara Ponz Ruiz";
  t1 = "ALVIN";
  u1 = "Fermín Aldaya";
  v1 = "CARLOS";
  w1 = "Valentina Triolo";
  x1 = "NICK";
  y1 = "Melina Tobio";
  z1 = "PETE";
  a2 = "Candela Biagetti";
  b2 = "REBECCA";
  c2 = "Sasha Gongora García";
  d2 = "SARAH";
  e2 = "Luz Darino";
  //fuentes
  font = createFont("Dead Font Walking.otf",50);
  textFont(font);
  font2 = createFont("Dead Font Walking.otf",130);
  font3 = createFont("twdfuente.ttf",32);
  textFont(font2);
  
}
void draw(){
  println(frameCount);
  println(mouseX,mouseY);
  miVariable = frameCount;
  titulo = frameCount;
  println(miVariable);
  //tamaño de imagenes
  image(images[imageIndex],0,0);
  imageIndex = (imageIndex+1)%images.length;
  //color de texto y fuentes
  fill(#CBBD75);
  textFont (font);
  //titulo del juego
  if (frameCount <=250) if (frameCount >= 100){
    text("THE WALKING", 450, 220);
    textFont(font2);
  }
  if (frameCount <=250) if (frameCount >= 100) {
    text("DEAD",450,320);
    textFont(font);
  }
  //titulo del capitulo
  if(frameCount >=350)if (frameCount <=500) {
  text("All That Remains", 450, 260);
  }
  //creditos
  //pantalla 3
  textFont (font3);
  text(a,450,1100-miVariable);
  text(b,450,1125-miVariable);
  text(c,450,1200-miVariable);
  text(d,450,1225-miVariable);
  text(e,450,1250-miVariable);
  text(f,450,1325-miVariable);
  text(g,450,1350-miVariable);
  text(h,450,1375-miVariable);
  text(i,450,1450-miVariable);
  text(j,450,1475-miVariable);
  text(k,450,1550-miVariable);
  text(l,450,1575-miVariable);
  //pantalla 4
  text(m,450,1650-miVariable);
  text(n,450,1675-miVariable);
  text(o,450,1700-miVariable);
  text(p,450,1725-miVariable);
  text(q,450,1750-miVariable);
  text(r,450,1775-miVariable);
  text(s,450,1800-miVariable);
  text(t,450,1875-miVariable);
  text(u,450,1900-miVariable);
  text(v,450,1925-miVariable);
  text(w,450,1950-miVariable);
  text(x,450,1975-miVariable);
  text(y,450,2000-miVariable);
  text(z,450,2025-miVariable);
  text(a1,450,2050-miVariable);
  text(b1,450,2075-miVariable);
  text(c1,450,2100-miVariable);
  text(d1,450,2125-miVariable);
  //pantalla 5
  text(e1,450,2200-miVariable);
  text(f1,450,2225-miVariable);
  text(g1,450,2250-miVariable);
  text(h1,450,2325-miVariable);
  text(i1,450,2350-miVariable);
  text(j1,450,2375-miVariable);
  text(k1,450,2450-miVariable);
  text(l1,450,2525-miVariable);
  text(m1,450,2550-miVariable);
  text(n1,450,2625-miVariable);
  //pantalla 6 y media(?
  text(o1,450,2650-miVariable);
  text(p1,450,2725-miVariable);
  text(q1,450,2750-miVariable);
  text(r1,450,2825-miVariable);
  text(s1,450,2850-miVariable);
  text(t1,450,2925-miVariable);
  text(u1,450,2950-miVariable);
  text(v1,450,3025-miVariable);
  text(w1,450,3050-miVariable);
  text(x1,450,3125-miVariable);
  text(y1,450,3150-miVariable);
  text(z1,450,3225-miVariable);
  text(a2,450,3250-miVariable);
  text(b2,450,3325-miVariable);
  text(c2,450,3350-miVariable);
  text(d2,450,3425-miVariable);
  text(e2,450,3450-miVariable);
  //ultima pantalla
  thanks = thanks - 1;
  text("Thank you for playing <3",450,thanks);
  println(frameCount);
  if (frameCount>=3400){
    thanks = 253;
  }
  
}
void mouseMoved() {
image(skull, mouseX -40, mouseY -35);
}
void mousePressed () {
  sound.trigger() ;
}

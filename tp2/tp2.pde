PImage img1, img2, img3;
float posX, posY, posY2;
int estado;
int contador;
int opacidadTexto;

//Michelle Aylín G, legajo 119048/0, comisión tres.

void setup() {
  size(640, 480);
  img1 = loadImage("coralesuno.jpg");
  img2 = loadImage("coralesdos.jpg");
  img3 = loadImage("pantallatres.jpg");
  estado = 1;
  contador = 0;
  posX = 10;
  posY = 320;
  posY2 = 0;
  opacidadTexto = 210;
}

void draw() {
  println("estado=" + estado);
  
  if (estado == 1) {
    // Pantalla uno.
    pushStyle();
    image(img1, 0, 0, width, height);
    fill(208, 2, 255, opacidadTexto);
    PFont font;
    font = loadFont ("NotoSans-CondensedBoldItalic-48.vlw");
    textFont (font);
    textSize(34);
    text("¨Machine Hallucinations: Coral¨.", 20, 40);
    textSize(22);
    text("29/11/2021 - 05/12/2021.", 20, 64);
    textSize(26);
    String parrafouno = "Es una escultura de datos IA de 10 m X 10 m, creada por el artista digital Refik Anadol para Art Basel Miami 2021.";
    text(parrafouno, posX, posY, 600, 200);
    
    //Texto se desvanece.
  
    opacidadTexto -= 1;
    if (opacidadTexto <= 0) {
      // Cambio el estado:
      estado = 2;
      contador = 0;
      posX = 20;
      posY = 320;
      opacidadTexto = 255;
      popStyle();
    }
  } else if (estado == 2) {
    // Pantalla dos.
    pushStyle();
    image(img2, 0, 0, width, height);
    fill(250, 2, 255);
    textSize(28);
    String parrafodos;
    parrafodos = "Está compuesta por 1.742.772 de imágenes de corales disponibles públicamente que fueron intervenidas con IA.";
    text(parrafodos, posX, posY2, 600, 200);
    
    //Texto va de arriba hacia abajo.
   
    posY2 += 2;
    if (posY2 >= 486) {
      // Cambio el estado:
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 320;
      posY2 = 0;
      popStyle();
    }
  } else if (estado == 3) {
    // Pantalla tres.
    pushStyle();
    image(img3, 0, 0, width, height);
    PFont font;
    font = loadFont ("TimesNewRomanPS-ItalicMT-48.vlw");
    textFont (font);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(30);
    String parrafotres;
    parrafotres = "La obra se presentó en el Teatro Colón el 03/10/2022, en el marco de ¨Experiencias artbag Buenos Aires¨ durante la Semana del Arte.";
    text(parrafotres, posX, 20, 600, 200);
    fill(46, 64, 252);
    rect(580, 420, 48, 20);
    popStyle();
    
    //Botoncito. <3
    fill (0);
    textSize(14);
    text("Inicio.", 586, 436);
  } else {
    // Estado no previsto.
  }
}

void mousePressed() {
  if (estado ==3) {
  if (mouseX>580 && mouseX<580 + 48
  && mouseY >420 && mouseY<420 + 20) {
   if (estado == 3) {
    estado = 1;
}
  }
}
}

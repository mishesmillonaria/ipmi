/*Michelle Aylín González,
Legajo 119048/0,
Comisión tres.

Enlace del video:  https://www.youtube.com/watch?v=KBYKd8Qb5rA
Gracias por ser mi profe. <333

Lo de rancio lo digo en broma, en realidad no creía que
iba a poder corregirlo. c:
*/

PImage OpArt;    
PFont fuente;

void setup (){
  size(800, 400);
  background(255);
  OpArt = loadImage("F_35.jpg");  
  fuente = loadFont("NotoSans-CondensedBoldItalic-48.vlw");
}

void draw(){
  image(OpArt, 0, 0, width/2, height);  
  elipsesRancias();
  usoReturn();
}

void dibujarEllipses(int posX_, int posY_){
  for (int e=8; e>0; e--) {
  strokeWeight(2);
  ellipse(posX_, posY_, 28, 28);
  ellipse(posX_, posY_, e*28, e*28);
}
}

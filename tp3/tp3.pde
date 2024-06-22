/*Michelle Aylín González,
Legajo 119048/0,
Comisión tres.

Enlace del video:  https://youtu.be/slO3qvNedZk

Perdón por ser tan tarada, JAJAJA.

Había cambiado el orden poniendo la imagen después de mi dibujo,
pero cuando corría el programa tenía que mover el cursor para
que aparezca el texto y parte del dibujo volvía a quedar sobre
la imagen de referencia, por lo que tuve que dejarlo así para
no tener problemas.*/

PImage OpArt;    

void setup (){
  size(800, 400);
  background(255);
  OpArt = loadImage("F_35.jpg");  
    
}

void draw(){
  image(OpArt, 0, 0, width/2, height);  
  elipsesRancias();
  usoReturn();
}                

/*Michelle Aylín González,
Legajo 119048/0,
Comisión tres.

Enlace del video:  https://youtu.be/slO3qvNedZk

Perdón por ser tan tarada, JAJAJA.*/

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

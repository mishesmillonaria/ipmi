void elipsesRancias(){
  for (int i=0; i<6; i+=2) {
   for (int j=0; j<6; j+=5) {
     dibujarEllipses(512+ i/2 * 88, 112+ j/2 * 88);
   }
  }
  
  String indicación = usoReturn();
  textFont(fuente);
  textSize(28);
  textLeading(28);
  fill(random(255), random(0), random(255));
  text(indicación, 12, 200);
  noFill();
}

void keyPressed(){
   if (key== 'r' || key == 'R'){
     stroke(255, 0, 0);
   }
   if (key== 'a' || key == 'A'){
     stroke(0, 0, 255);
   }
   if (key== 'x' || key == 'X'){
     stroke(0);
     noTint();
   }
}

void mouseMoved(){
  if (mouseX > 400){
  if (key== 'a' || key == 'A'){
   tint(0, 0, 255, 8);
  }
  if (mouseX > 400){
  if (key== 'r' || key == 'R'){
   tint(255, 0, 0, 8);
  }
  }
  }
}

String usoReturn(){
 return "Holis. <3 \nPresione ¨R¨ para pintar \nlas líneas de rojo y ¨A¨ para\npintarlas de azul.\nLuego mueva el mouse sobre\nel dibujo para pintar la imagen.\nReinicie presionando ¨X¨";
}

void elipsesRancias(){
  String indicación = usoReturn();
  PFont fuente;
  fuente = loadFont("NotoSans-CondensedBoldItalic-48.vlw");
  textFont(fuente);
  textSize(28);
  textLeading(28);
  fill(random(255), random(0), random(255));
  text(indicación, 12, 200);
  noFill();
  primerasElipses();
  últimasElipses();
  
}

void primerasElipses() {
  for (int e1=10; e1<550; e1+=40) {
    strokeWeight(8);
    ellipse(700, 140, e1, e1);
  
    fill(255);
   //Relleno la elipse.
    ellipse(420, 90, 192, 192);
    noFill();

  for (int e2=10; e2<180; e2+=20) {
    strokeWeight(4);
    ellipse(420, 90, e2, e2);

    fill(255);
    ellipse(510, 60, 136, 136);
    noFill();
  for (int e3=10; e3<120; e3+=12) {
    strokeWeight(2);
    ellipse(510, 60, e3, e3);
}
} 
    fill(255);
    ellipse(510, 280, 310, 310);
    noFill();
  for (int e4=10; e4<320; e4+=30) {
    strokeWeight(6);
    ellipse(510, 280, e4, e4); 
  }
  }
}

void últimasElipses(){
    fill(255);
    ellipse(650, 350, 192, 192);
    noFill();
  for (int e5=10; e5<180; e5+=20) {
    strokeWeight(4);
    ellipse(650, 350, e5, e5);
  }
  
    fill(255);
    ellipse(710, 260, 170, 170);
    noFill();
  for (int e6=10; e6<180; e6+=16) {
    ellipse(710, 260, e6, e6);
    
   }

    fill(255);
    ellipse(660, 120, 194, 194);
    noFill();
  for (int e7=10; e7<210; e7+=20) {
    ellipse(660, 120, e7, e7);
     
  }
  
    fill(255);
    ellipse(600, 200, 278, 278);
    noFill();
  for (int e8=10; e8<280; e8+=24) {
    ellipse(600, 200, e8, e8);
  }
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

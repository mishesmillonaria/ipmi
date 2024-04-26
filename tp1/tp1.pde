PImage liminal;

void setup(){
size (800, 400);
background(222, 183, 255);
liminal = loadImage("Captura de pantalla 2024-04-23 153234.jpg");
}

void draw(){
image(liminal, 0, 0, 400, 400);

//Pelo.
fill(62, 26, 5);
stroke(0);
strokeWeight(2);
rect(443, 140, 314, 255);
//Remera.
//Utilicé vértices para pintar la remera.
fill(255, 57, 140);
stroke(255, 57, 140);
beginShape();
vertex(width-165, 400);
vertex(width-240, 370);
vertex(width-245, 335);
vertex(width-272, 377);
vertex(width-300, 390);
vertex(width-350, 399);
endShape();
//Lado izquierdo.
beginShape();
vertex(500, 400);
vertex(650, 338);
vertex(665, 368);
vertex(680, 377);
vertex(704, 390);
vertex(770, 400);
endShape();
//Dobladillo de la remera.
stroke(0);
bezier(width-140, 358, width-142, 410, width-255, 410, width-260, 358);
//Cuello.
//Para colorear el cuello:
noStroke();
fill(245, 216, 188);
rect(552, 290, 97, 58);
//Acá lo dibujo.
stroke(0);
noFill();
bezier(430, 399, 465, 399, 566, 399, 550, 292);
bezier(width-17, 399, width-185, 399, width-150, 295, width-150, 292);
fill(245, 216, 188);
bezier(width-150, 338, width-142, 400, width-255, 400, width-250, 338);
//Acá hago mi carita.
stroke(0);
strokeWeight(2);
fill(245, 216, 188);
ellipse(width-200, 200, 200, 210);
fill(0);
noStroke();
fill(255, 180, 180);
ellipse(width-135, 235, 50, 40);
ellipse(width-265, 235, 50, 40);
//Flequillo.
stroke(0);
strokeWeight(2);
fill(62, 26, 5);
bezier(width-42, 150, width-60, 5, width-350, 5, width-358, 150);
stroke(0);
fill(0);
strokeWeight(2);
line(width-70, 150, width-325, 150);
//Ojo uno.
fill (255);
stroke (10);
strokeWeight (5);
ellipse (width-140, 170, 70, 70);
stroke (10);
fill (0);
ellipse (width-140, 170, 30, 30);
/*Pestaña izquierda. Antes la dibujé con dos líneas y pensé en probar
el triángulo, de ahí copié los parámetros que usé para las líneas
y los puse en eltriángulo.*/
triangle(width-70, 135, width-105, 160, width-110, 145);
//Ojo dos.
stroke (10);
strokeWeight (5);
fill (255);
ellipse (width-260, 170, 70, 70);
stroke (10);
fill (0);
ellipse (width-260, 170, 30, 30);
//Pestaña derecha, esta costó más.
triangle(width-330, 135, width-295, 160, width-290, 145);
//Nariz, no puedo creer que me salió.
strokeWeight(2);
line(600, 200, 570, 220);
line(600, 230, 570, 220);
//Boca.
noFill();
strokeWeight(3);
stroke(255, 162, 180);
bezier(width-180, 270, width-180, 270, width-200, 300, width-220, 270);

}

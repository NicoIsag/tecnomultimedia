/*Nombre; Nicolas Nahuel Isaguirre Lunatti
  Legajo: 93562/2
  Video: https://youtu.be/0XKNFVuPl1k
  Comision 3
  Trabajo Practico 2 
*/



int ancho = 20;
int alto = 20;
int alto2 = 20;
int ancho2 = 20;
PImage imagen;
boolean x = false;
boolean r = false;
void setup() {
  size(800,400);
  rectMode(CENTER);
  imagen = loadImage("paraeltp2.jpg");
  keyPressed();
}

void draw () {
  noFill();
  colores();
  cuadrados();
  image (imagen, 0, 0);
}

void keyPressed (){
  if (keyCode == 'C'){
    x = !x;
  }
  if (keyCode == 'X'){
    r = !r;
  }
}

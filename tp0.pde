PImage imagen;

void setup() {
  size (800,400);
  background (39,38,39);
  imagen = loadImage ("data/retrato.png"); 
}

void draw (){
  //Retrato de Vin Diesel
  image (imagen,400,0,400,400); 
  fill (255,161,106);
  //Orejas
  ellipse (30,200,50,100);
  ellipse (365,200,60,100);
  //cuello
  rect(75,330,250,80);
  //Cara
  ellipse (200,200,340,380);
  //Ojos
  fill (255,255,255);
  ellipse (110,160,60,16);
  ellipse (280,160,60,16);
  fill(106,40,2);
  ellipse (115,160,20,15);
  ellipse (285,160,20,15);
  fill (255,255,255);
  ellipse (110,160,6,6);
  ellipse (280,160,6,6);
  fill (0,0,0);
  ellipse (115,160,8,8);
  ellipse (285,160,8,8);
  //Nariz
  fill (255,161,106);
  triangle (150,240,250,240,200,140);
  //Cejas
  fill(0,0,0);
  rect(80,140,60,5);
  rect(250,140,60,5);
  //Boca
  fill(255,255,255); 
  ellipse(200,300,110,30);
  noFill(); 
  stroke(193,8,85);
  strokeWeight(10);
  ellipse(200,300,110,30);
  stroke(0,0,0);
  strokeWeight(1);
  line(170,292,170,310);
  line(200,291,200,310);
  line(230,292,230,310);
  //Lunar
  fill(0,0,0);
  ellipse(150,60,5,5);
}

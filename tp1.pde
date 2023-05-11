/*Nombre: Nicolas Nahuel Isaguirre Lunatti
  Legajo: 93562/2
  Comisión 3: Obra de arte electrónico
*/
//Fuente para el titulo y final
PFont miFuenteT;
//Fuente para las paginas 
PFont miFuenteP;
PImage imagen1, imagen2, imagen3;
int estado;
float x, despX;
float cuentaF;

void setup () {
  size (640,480);
  estado = 0;
  x = 0;
  miFuenteT = loadFont ("MalgunGothicBold-40.vlw");
  miFuenteP = loadFont ("ComicSansMS-Bold-20.vlw");
  despX = 2;
  cuentaF = 0;
}
 

void draw (){
  background(255);  
  //Cargamos las Imagenes
  imagen1 = loadImage("autor.jpg");
  imagen2 = loadImage("img1.jpg");
  imagen3 = loadImage("img2.jpg");
  if (estado == 0) {
  //pantalla de inicio:
    fill(0);
    textSize(60);
    textAlign(CENTER);
    //Establecemos la tipografia
    textFont (miFuenteT);
    text("Click al boton para comenzar", 320, 160);
    fill (255, 3, 19);
    ellipse(320, 280, 100, 100);
    textSize(30);
    fill (0);
    text("Obra: Alzado Vectorial", 320, 420);
}  else if (estado == 1) {
    fill (31, 191, 252);
    textSize(30);
    textFont (miFuenteP);
    image (imagen1, 0, 0);
    text("Su primera presentacion fue en el año 2000,", x, 440);
    text("su autor fue Rafael Lozano Hemmer", x, 465);
    
    cuentaF++;
    if (cuentaF>60*10) {
      estado = 2;
      cuentaF = 0;
    }
    
    x+=2;
    if ( x>width+320 ) {
      x = -320;
     }
      
  } else if (estado == 2) {
      fill (31, 191, 252);
      textSize(23);
      textFont (miFuenteP);
      image (imagen2, 0, 0);
      text("Se localizó en el Zocaló de la Ciudad de México", 320, x);
      
      cuentaF++;
      if (cuentaF>60*10) {
        estado = 3;
        cuentaF = 0;
    }
    
      //Animacion de texto
      x+=3;
      if ( x> height+50) {
        x = 0;
  }

  }  else if (estado == 3) {
      fill (31, 191, 252);
      textSize(20);
      textFont (miFuenteP);
      image (imagen3, 0, 0);
      text("Se utilizaron 18 cañones antiaereos donde", x, 440);
      text("la gente podia interactuar mediante un sitio web", x, 465);
      
      //Animacion de texto
    
      x+=despX;
      if ( x>640-230) {
        despX = -2;
    }
      if ( x<0+230) {
        despX = 2;
    }  

      cuentaF++;
      if (cuentaF>60*10) {
        estado = 4;
        cuentaF = 0;
    }
  }   else if (estado == 4) {
        background(255);  
        fill (40);
        textSize (40);
        textFont (miFuenteT);
        text ("Click en el boton para reiniciar", 320, 240);
        fill (58, 0, 255);
        ellipse(320, 320, 100, 100);
  }
}

void mousePressed() {

  if ( estado == 0 ) {
    //flujo de estado de 0 a 1:
    if (  dist( mouseX, mouseY, 320, 320)<50 ) 
      estado = 1;
      cuentaF = 0;
 }  else if (estado == 1) {
      //Flujo de estado de 1 a 2:
      estado = 2;
      cuentaF = 0;
  
 }  else if (estado == 2) {
      //Flujo de estado de 2 a 3:
      estado = 3;
      cuentaF = 0;
  
 }  else if (estado == 3) {
      //Flujo de 3 a 4 (Boton de reinicio):
      estado = 4;
      cuentaF = 0;
  } else if (estado == 4) {
      if (  dist( mouseX, mouseY, 320, 320)<50 )  
        estado = 1;
        cuentaF= 0;
        //Reinicio la posicion de x para que al reiniciar aparezca desde el principio
        x = 0;
  }
} 

void cuadrados () {

strokeWeight(5);
  for(int i = 0; i <=20; i++){
    if (r == true){
      stroke (random(255),random(255),random(255));
    } else {
    stroke (255,0,0);
    }
    rect(600,200,ancho,alto);
    ancho = 20 * i;
    alto = 20 * i;
}
}
  

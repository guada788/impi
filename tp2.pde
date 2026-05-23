PImage   miImagen0,miImagen, miImagen2, miImagen3, miImagen4, miImagen5,miImagen6,miImagen7, miImagen8,miImagen9;

float x1 = 0, x2, x3, x4;
float velocidad = 2;
float textoY;
int estado;
float imgPosX = 640;
int fase = 0;
int timerEspera = 0;
int timerPantalla = 0;
int duracionPantalla = 600;
boolean fin = false;

void setup() {
  size(640, 480);
  miImagen0 = loadImage("imagen0.jpg");
  miImagen  = loadImage("imagen1.png");
  miImagen2 = loadImage("imagen2.jpg");
  miImagen3 = loadImage("imagen3.png");
  miImagen4 = loadImage("imagen4.png");
  miImagen5 = loadImage("imagen5.png");
  miImagen6 = loadImage("imagen6.png");
  miImagen7 = loadImage("imagen7.png");
  miImagen8 = loadImage("imagen8.png");
  miImagen9 = loadImage("imagen9.png");
  textoY = -50;
  x1 = 0; x2 = 640; x3 = 1280; x4 = 1930;
}

void draw() {
  background(0);
  image(miImagen0, 0, 0, 640, 480);

 if (fin) {
  // fondo completo
  image(miImagen0, 0, 0, 640, 480);
 
  // botón redondo naranja
  fill(255, 140, 0);
  ellipse(320, 320, 120, 120);  // círculo naranja
  
  // texto del botón
  textSize(14);
  fill(255);
  text("Reiniciar", 290, 325);
  
  textAlign(LEFT);
  return;
}
  

  // PANTALLA 0
  if (estado == 0) {
    if (fase == 0) {
      if (imgPosX > 120) { imgPosX -= 4; } else { fase = 1; timerEspera = 0; }
    }
    if (fase == 1) {
      timerEspera++;
      if (timerEspera > 200) { fase = 2; }
    }
    if (fase == 2) { imgPosX -= 6; }
    image(miImagen, imgPosX, 10, 400, 400);

    timerPantalla++;
    if (timerPantalla >= duracionPantalla) { fase = 2; }

    //cambia cuando la imagen salió completamente
    if (fase == 2 && imgPosX < -400) {
      estado++; imgPosX = 640; textoY = -50;
      fase = 0; timerEspera = 0; timerPantalla = 0;
    }
    textoY++;
    if (textoY > 370) textoY = 370;
  }

  //  PANTALLA 1 
  if (estado == 1) {
    if (fase == 0) {
      if (imgPosX > 120) { imgPosX -= 4; } else { fase = 1; timerEspera = 0; }
    }
    if (fase == 1) {
      timerEspera++;
    if (textoY >= 370){fase=2;} 
    }
    if (fase == 2) { imgPosX -= 6; }
    image(miImagen2, imgPosX, 40, 400, 400);

    // ✅ cambia solo cuando la imagen salió completamente
    if (fase == 2 && imgPosX < -400) {
      estado++; imgPosX = 640; textoY = -50; fase = 0; timerEspera = 0;
    }
    textoY++;
    if (textoY > 370) textoY = 370;
    fill(0, 0, 0, 150);
    noStroke();
    rect(0, (int)textoY - 5, 640, 100);
    textSize(15);
    fill(255);
    text("En la Aldea Oculta de la Hoja, un poderoso monstruo llamado\nZorro de Nueve Colas atacó el lugar causando destrucción y miedo.\nPara detenerlo, sellaron la bestia dentro de un bebé: Naruto Uzumaki.", 10, textoY, 625, 100);
  }

  // PANTALLA 2 
  if (estado == 2) {
    if (fase == 0) {
      if (imgPosX > 120) { imgPosX -= 4; } else { fase = 1; timerEspera = 0; }
    }
    if (fase == 1) {
      timerEspera++;
       if (textoY >= 370){fase=2;}
    }
    if (fase == 2) { imgPosX -= 6; }
    image(miImagen3, imgPosX, 40, 400, 400);

    //cambia cuando la imagen salió completamente
    if (fase == 2 && imgPosX < -400) {
      estado++; imgPosX = 640; textoY = -50; fase = 0; timerEspera = 0;
    }
    textoY++;
    if (textoY > 370) textoY = 370;
    fill(0, 0, 0, 150);
    noStroke();
    rect(0, (int)textoY - 5, 640, 100);
    textSize(15);
    fill(255);
    text("Durante su infancia, Naruto creció sintiéndose solo y rechazado por muchos habitantes de la aldea, quienes le temían por tener al Zorro de Nueve Colas en su interior. A pesar de todo, soñaba con convertirse en Hokage para que todos reconocieran su valor.", 10, textoY, 625, 100);
  }

  // PANTALLA 3
  if (estado == 3) {
    if (fase == 0) {
      if (imgPosX > 120) { imgPosX -= 4; } else { fase = 1; timerEspera = 0; }
    }
    if (fase == 1) {
      timerEspera++;
    if (textoY >= 370){fase=2; }
    }
    if (fase == 2) { imgPosX -= 6; }
    image(miImagen4, imgPosX, 40, 400, 400);

    // ✅ cambia solo cuando la imagen salió completamente
    if (fase == 2 && imgPosX < -400) {
      estado++; imgPosX = 640; textoY = -50; fase = 0; timerEspera = 0;
    }
    textoY++;
    if (textoY > 370) textoY = 370;
    fill(0, 0, 0, 150);
    noStroke();
    rect(0, (int)textoY - 5, 640, 100);
    textSize(15);
    fill(255);
    text(" En la academia ninja,conoció a compañeros importantes como Sasuke Uchiha, un joven talentoso y serio, y Sakura Haruno, una chica inteligente..", 10, textoY, 625, 100);
  }

  //pantalla 4
  if (estado == 4) {
    if (fase == 0) {
      if (imgPosX > 120) { imgPosX -= 4; } else { fase = 1; timerEspera = 0; }
    }
    if (fase == 1) {
      timerEspera++;
     if (textoY >= 370){fase=2; }
    }
    if (fase == 2) { imgPosX -= 6; }
    image(miImagen5, imgPosX, 40, 400, 400);

    // ✅ cambia solo cuando la imagen salió completamente
    // vuelve a estado 0 al terminar el ciclo
    if (fase == 2 && imgPosX < -400) {
      estado = 5; imgPosX = 640; textoY = -50; fase = 0; timerEspera = 0;
    }
    textoY++;
    if (textoY > 370) textoY = 370;
    fill(0, 0, 0, 150);
    noStroke();
    rect(0, (int)textoY - 5, 640, 100);
    textSize(15);
    fill(255);
    text("Más adelante, Naruto logra graduarse. formando parte del Equipo 7 junto a Sasuke y Sakura, bajo el liderazgo del experimentado ninja Kakashi Hatake.", 10, textoY, 625, 100);
  }
     //pantalla 5
if (estado == 5) {
    if (fase == 0) {
      if (imgPosX > 120) { imgPosX -= 4; } else { fase = 1; timerEspera = 0; }
    }
    if (fase == 1) {
      timerEspera++;
     if (textoY >= 370){fase=2; }
    }
    if (fase == 2) { imgPosX -= 6; }
    image(miImagen6, imgPosX, 40, 400, 400); 
    
    if (fase == 2 && imgPosX < -400) {
      estado = 6; imgPosX = 640; textoY = -50; fase = 0; timerEspera = 0;
    }
    textoY++;
    if (textoY > 370) textoY = 370;
    fill(0, 0, 0, 150);
    noStroke();
    rect(0, (int)textoY - 5, 640, 100);
    textSize(15);
    fill(255);
    text("Con el paso del tiempo, Sasuke abandona la aldea buscando poder para vengar a su clan, y Naruto promete traerlo de regreso.", 10, textoY, 625, 100);
  }
   //pantalla 6
if (estado == 6) {
    if (fase == 0) {
      if (imgPosX > 120) { imgPosX -= 4; } else { fase = 1; timerEspera = 0; }
    }
    if (fase == 1) {
      timerEspera++;
     if (textoY >= 370){fase=2; }
    }
    if (fase == 2) { imgPosX -= 6; }
    image(miImagen7, imgPosX, 40, 400, 400); 
    
    if (fase == 2 && imgPosX < -400) {
      estado = 7; imgPosX = 640; textoY = -50; fase = 0; timerEspera = 0;
    }
    textoY++;
    if (textoY > 370) textoY = 370;
    fill(0, 0, 0, 150);
    noStroke();
    rect(0, (int)textoY - 5, 640, 100);
    textSize(15);
    fill(255);
    text("Mientras tanto aparece Akatsuki, una organización de ninjas renegados que busca capturar a las Bestias con Cola  para generar una guerra.", 10, textoY, 625, 100);
  }
   //pantalla 7
if (estado == 7) {
    if (fase == 0) {
      if (imgPosX > 120) { imgPosX -= 4; } else { fase = 1; timerEspera = 0; }
    }
    if (fase == 1) {
      timerEspera++;
     if (textoY >= 370){fase=2; }
    }
    if (fase == 2) { imgPosX -= 6; }
    image(miImagen8, imgPosX, 40, 400, 400); 
    
    if (fase == 2 && imgPosX < -400) {
      estado = 8; imgPosX = 640; textoY = -50; fase = 0; timerEspera = 0;
    }
    textoY++;
    if (textoY > 370) textoY = 370;
    fill(0, 0, 0, 150);
    noStroke();
    rect(0, (int)textoY - 5, 640, 100);
    textSize(15);
    fill(255);
    text("Gracias a su esfuerzo, Naruto logra controlar el poder del Zorro de Nueve Colas y se convierte en uno de los ninjas más fuertes.", 10, textoY, 625, 100);
  }
     //pantalla 8
if (estado == 8) {
    if (fase == 0) {
      if (imgPosX > 120) { imgPosX -= 4; } else { fase = 1; timerEspera = 0; }
    }
  if (fase == 1) {
    timerEspera++;
    if (textoY >= 370) { fase = 2; }
   
    }
    if (fase == 2) { imgPosX -= 6; }
    image(miImagen9, imgPosX, 40, 400, 400); 
    
    if (fase == 2 && imgPosX < -400) {
     fin =true;
    }
    textoY++;
    if (textoY > 370) textoY = 370;
    fill(0, 0, 0, 150);
    noStroke();
    rect(0, (int)textoY - 5, 640, 100);
    textSize(15);
    fill(255);
    text("Finalmente, Naruto consigue detener la guerra y también logra reconciliarse con Sasuke después de una última batalla entre ambos.", 10, textoY, 625, 100);
}
}
void mousePressed() {
  if (fin) {
    // dist() mide la distancia del click al centro del círculo
    if (dist(mouseX, mouseY, 320, 320) < 60) {  // 60 = radio del círculo
      fin = false;
      estado = 0;
      imgPosX = 640;
      textoY = -50;
      fase = 0;
      timerEspera = 0;
      timerPantalla = 0;
    }
  }
}

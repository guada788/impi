PImage foto;
void setup(){
size(800,400);
foto = loadImage("mona.jpeg" );

}
void draw(){
image(foto,0,0,400,400);

 // Fondo paisaje
  fill(#11522E);
  rect(400, 120, 800, 100);//paisaje verde

  fill(#5F8293);
  rect(400,0, 800, 200);

fill(#3E3306);
  rect(400,220,400,400);
  
  // Cuerpo
 fill(#50471B);
 rect( 500,240,200,200,28);
 
 //manos
 fill(#F0C8AA);
 rect(510,360,80,20,28);
 ellipse(600,370,50,30);
 rect(615,360,80,20,28 );
 ellipse( 610,360,50,30 );
 
 // Cabello
  fill(0);
  ellipse(600, 150, 180, 180);//pelo redondo 
  rect(510, 150, 180, 150); //pelo

     //Cuello
   fill(#F0C8AA );
 ellipse(600,290,100,100);
  fill(#F0C8AA);
  rect(570, 240, 60, 40);


     // Cara
  fill(#F0C8AA);
  ellipse(600, 180, 140, 160);//cara
  
  // Ojos
  fill(255);
  ellipse(560, 180, 25, 12);
  ellipse(640, 180, 25, 12);

  fill(0);
  ellipse(560, 180, 6, 6);
  ellipse(640, 180, 6, 6);

  // Nariz
  fill(#DCB496);
  triangle(600, 190, 590, 210, 610, 210);

  // Boca
  fill(#965050);
  ellipse(600, 230, 40, 15);
}

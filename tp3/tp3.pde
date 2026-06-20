PImage miImagen0;
int cant=40;
int tam;

void setup() {
size(800,400);
miImagen0=loadImage("imagen0.jpeg");
tam=width/cant;

}
void draw(){
background(55);
image(miImagen0,0,0,400,400);


 dibujoColor(); // ellilpse y color del dibujo
 dibujaCirculos2();



 
 
}

void dibujaCirculos2(){
  noStroke();
  
  for(int y = 0; y < 400; y++){
    for(int x =0; x < 20; x++){
      float cx = 400+x*20 + 10;
      float cy = y*20 + 10;
      float d = dist(mouseX, mouseY, cx, cy);
      float angulo = constrain(map(d, 0, 150, PI/2, 0), 0, PI/2);
      
      pushMatrix();
        translate(cx, cy);
        rotate(angulo);
        
        // Puntos blancos en vértices
        fill(255);
        ellipse(-9, -9, 5, 5);
        ellipse( 9, -9, 5, 5);
        ellipse(-9,  9, 5, 5);
        ellipse( 9,  9, 5, 5);
      popMatrix();}
    }
}

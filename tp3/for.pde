void dibujoColor(){
  strokeWeight(1);
  stroke(2);

  for(int y = 0; y < 400; y++){
    for(int x = 0; x < 20; x++){
      float cx = 401+ x*20 + 9;
      float cy = y*20 + 9;
      float d = dist(mouseX, mouseY, cx, cy);
      float angulo = map(d, 0, 150, PI/2, 0);
      
       if((x + y) % 2 == 0){
        fill(#00C873);  // verde
      } else {
        fill(#00677E);  // azul
     }   
       pushMatrix();
        translate(cx, cy);
        rotate(angulo);
        rect(-9, -9, 18, 18,4);
      popMatrix();
    }
  }
}

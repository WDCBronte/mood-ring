void indigoau() {
   
  
for(int y = 0; y < height; y++){
  for(int x = 0; x < width; x++){
 float distanceFromCenter = dist(x, y, width/2, height/2);
      stroke(255-2*distanceFromCenter,50,200,50);
      point(x, y);
    }
  }
}

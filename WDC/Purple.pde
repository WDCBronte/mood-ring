
void purpleau() {
  
  

for(int y = 0; y < height; y++){
  for(int x = 0; x < width; x++){
 float distanceFromCenter = dist(x, y, width/2, height/2);
      stroke(255 - 127 + distanceFromCenter,0,255);
      point(x, y);
    }
  }
}

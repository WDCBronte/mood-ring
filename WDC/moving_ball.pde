float x = 0;
float speed = 10;

void setup () {
  size (640, 360);
}

void draw () {
  background(0);
  noStroke();
  fill(225);
  circle(x, 180, 50);
 
  x = x + speed;
  
 if (x >= 640) {
    speed = speed * -1;
  }
 
 if (x <= 0) {
    speed = speed * -1;
  }
}

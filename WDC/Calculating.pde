
float  diam, angle, dist;
String[] calculating = {"calculating", "almost there", "done"};
int count = 0;
float x=320;
float speed =7;
int index= 0 ;

/// wait screen///
void calc() {

  background(255);
  noStroke();
  fill(0);
  circle(x, 180, 15);
  fill(0);
  text(calculating[index], width/2, height/2+64);
  count = count + 1;
  noStroke();
  fill(255);
  x= x + speed;
  if (x>=400 || x <= 200) {
    speed = speed * - 1  ;
  }

  if (count == 200 ) {
    index = index + 1;
  }
  if (count == 400)
    index = index + 1;
}

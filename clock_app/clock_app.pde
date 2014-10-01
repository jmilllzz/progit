void setup() {

  size(400, 400);
  fill(0);
}
void draw() {
  background(255);
  textSize(25);
  text("Time:", 75, 100);
  int M = month();
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  //clock
  textSize(50);
  if (h>9) text(""+h, 145, 115);
  else text("0"+h, 145, 115);
  text(":", 205, 110);
  if (m>9) text(""+m, 217, 115);
  else text("0"+m, 217, 115);
  text(":", 278, 110);
  if (s>9) text(""+s, 294, 115);
  else text("0"+s, 294, 115);
  //date
  if (M<10) text("0"+M, 145, 165);
  else text(""+M, 145, 165);
  text("-", 205, 165);

}


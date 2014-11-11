//float pixelsPerUnit = 40;
float xMin=-3;
float xMax=3;
float yMin=-3;
float yMax=3; 
float tickSize=1;
float h=0; 
float k=0;
import java.text.*;


void setup() {
  size(521, 521);
}

void draw() {
  background(0);
  drawGrid();
  drawCords();
  h=cartesianX(mouseX);
  k=cartesianY(mouseY);
  drawParabola();

  String instruction= "vertex follows the mouse";
  text(instruction, 20, 20);
  //draw equation
  textSize(15);
  String formula;
  if (h>0) formula = "y=a(x-"+formatFloat(h)+")^2";
  else formula="y=a(x"+formatFloat(h)+")^2";
  if (k>0) formula +="+"+formatFloat(k);
  else formula +=""+formatFloat(k);
  text(formula, width/2- textWidth(formula)/2, height-20);
}
String formatFloat(float x) {
  DecimalFormat myFormatter = new DecimalFormat("#.##");

  return myFormatter.format(x);
}
float screenX(float x_) {
  return (x_-xMin)/(xMax-xMin)*width;
}
float screenY(float y_) {
  return (yMax-y_)/(yMax-yMin)*height;
}
float cartesianX(float x) {
  return ((float) x) / width * (xMax - xMin) + xMin;
}
float cartesianY(float y) {
  return yMax - ((float) y) / height * (yMax - yMin);
}
void drawGrid() {
  strokeWeight(1);
  //stroke(random(0, 255), random(0, 255), random(0, 255));
  stroke(50);
  float x_ = xMin;
  float y_ = yMin;

  while (x_<xMax) {
    line(screenX(x_), 0, screenX(x_), height);
    x_ += tickSize;
  }
  while (y_<yMax) {
    line(0, screenY(y_), width, screenY(y_));
    y_ += tickSize;
  }
}
void drawCords() {
  float txtSize=10;
  textSize(txtSize);
  float x_ = xMin+tickSize;
  float y_ = yMin;
  fill(165);
  while (x_<xMax) {
    String label= ""+x_;
    text(label, screenX(x_)-textWidth(label)/2, screenY(0)+txtSize/3);
    x_ += tickSize;
  }
  while (y_<yMax) {
    String label=""+y_;
    text(label, screenX(0)-textWidth(label)/2, screenY(y_)+txtSize/3);
    y_ += tickSize;
  }
}

void drawParabola() {
  float previousX=xMin;
  float previousY=computeY(previousX);
  for (float x_=xMin;x_<xMax;x_+=.1) {
    float y_=computeY(x_);

    stroke(255, 255, 0);
    line(screenX(x_), screenY(y_), screenX(previousX), screenY(previousY));
    previousX=x_;
    previousY=y_;
  }
}
float computeY(float x_) {
  float a=1;
  return a*(x_-h)*(x_-h)+k;
}


Raccoon rocky;
void setup() {
  size (600, 400);
  rocky=new Raccoon (width/2, height/2);
}
void draw() {
  background(0, 0, 255);
  float s=2; 
    rocky.setScale(s).drawYourself();

}

class Raccoon {
  float x_, y_;
  float scale=1;
  Raccoon(float x, float y) {
    x_=x;
    y_=y;
  }
  void drawYourself()
  { 
    float eyeWidth= 10*scale;
    
    //draw body
    fill(96, 75, 65);
    translate(x_, y_);
    ellipse(eyeWidth/10, -50, 3*eyeWidth, 8*eyeWidth);
    //drawnose
    triangle(0-eyeWidth, 0, 0+eyeWidth, 0, 0, 100);
    fill(150,0,0);
    ellipse(0,90,15,15);
    //draweyes
    noStroke();
    fill(255);
    ellipse(0-eyeWidth/2, 0, eyeWidth, 4*eyeWidth);
    ellipse(0+eyeWidth/2, 0, eyeWidth, 4*eyeWidth);
    //draw puples
    fill(0);
    ellipse(0-eyeWidth/2, 0, eyeWidth/1.2, eyeWidth/1.2);
    ellipse(0+eyeWidth/2, 0, eyeWidth/1.2, eyeWidth/1.2);
    //drawtail
    ellipse(eyeWidth/10,-120,20,20);
    fill(150);
    ellipse(eyeWidth/10,-132,20,20);
    fill(0);
    ellipse(eyeWidth/10,-144,20,20);
    fill(150);
    ellipse(eyeWidth/10,-156,20,20);
    fill(0);
    ellipse(eyeWidth/10,-168,20,20);
  }
  Raccoon setScale(float s) {
    scale=s;
    return this;
  }
}



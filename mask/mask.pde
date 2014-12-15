PGraphics pg;

void setup(){
  size (700,700);
  pg = createGraphics(width,height);
  pg.beginDraw();
  pg.background(200,255,200);
  pg.noStroke();
  pg.fill(0,0,255);
  pg.ellipse (width/4,height/4,20,20);
  pg.fill(255,0,0);
  pg.ellipse(width/2,height/2,45,45);
  pg.endDraw();
  
}
void draw(){
  image(pg,0,0);
  
  
}

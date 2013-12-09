Raindrops[] drops = new Raindrops[300];
Catcher catcher;
int score;
int oldTime = 0;
int threshold = 3000;
int index;
PImage Background;
boolean run;

void setup() {
  Background = loadImage("Rain.gif");
  size(Background.width, Background.height);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  catcher = new Catcher();
  run = true;
}
void draw() {
  textSize(50);
  background(Background); 
  startbutton (width/2, height/2, 100, 100);
  catcher.display();
  if (run == true) {
    for (int i = 0; i < index; i++) {
      drops[i].drop();
      drops[i].move();
      if (catcher.catchDrop(drops[i]) == true) {
        drops[i].goAway();
        score++; 
        threshold-=40;
      }
    }
    catcher.display();
    catcher.update();
    if (millis()- oldTime > threshold) {
      if (index < drops.length) {
        index++;
        oldTime = millis();
      }
    }
  }
}
void startbutton(int x, int y, int d, int d2) {
  fill (16, 255, 13);
  ellipse(x, y, d, d2);
  background(Background);
  text(score, 50, 100);
  if (mouseX > width/2 - d/2 && mouseX < width/2 + d/2 && mouseY > height/2 - d2/2 && mouseY < height/2 + d2/2 && mousePressed) {
    run = true;
  }
  else {
    run = false;
    background(Background);
    ellipse(width/2, height/2, d, d);
    //drops[i].reset();
  }
}


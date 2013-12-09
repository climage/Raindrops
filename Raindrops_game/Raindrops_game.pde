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
  text(score, 50, 100); 
  catcher.display();
}
void start(int d) {
  ellipse(width/2, height/2, d, d);
  if (mouseX > width/2 - d/2 && mouseX < width/2 + d/2 && mouseY > height/2 - d/2 && mouseY + d/2 && mousePressed) {
    run = true; 
    if (run = true) {
      for (int i = 0; i < index; i++) {
        drops[i].circle();
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
  else {
    run = false;
    background(Background);
    ellipse(width/2, height/2, d, d);
  }
}


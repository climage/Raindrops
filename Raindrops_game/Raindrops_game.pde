Raindrops[] drops = new Raindrops[300];
Catcher catcher;
int score;
int oldTime = 0;
int threshold = 3000;
int index;
PImage Background;

void setup() {
  Background = loadImage("Rain.gif");
  size(Background.width, Background.height);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  catcher = new Catcher();
}
void draw() {
  textSize(50);
  background(Background);
  text(score, 50,100); 
  catcher.display();
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
    if (millis()- oldTime > threshold){
      if (index < drops.length){
        index++;
        oldTime = millis();
      }
    }
  }


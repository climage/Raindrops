Raindrops[] drops = new Raindrops[10];
Catcher catcher;
int score;
int oldTime = 0;
int threshold = 3000;
int index;

void setup() {
  size(500, 500);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  catcher = new Catcher();
}
void draw() {
  background(255);
  catcher.display();
  for (int i = 0; i < index; i++) {
    drops[i].circle();
    drops[i].move();
    if (catcher.catchDrop(drops[i]) == true) {
      drops[i].goAway();
      score++; 
      threshold-=50; 
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


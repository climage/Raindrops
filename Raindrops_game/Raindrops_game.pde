Raindrops[] drops = new Raindrops[50];
Catcher catcher;

void setup() {
  size(500, 500);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  catcher = new Catcher();
}
  void draw() {
    background(0);
    catcher.display();
    for (int i = 0; i < drops.length; i++) {
      drops[i].circle();
      drops[i].move();
      drops[i].reset();
      drops[i].checkCatcher(catcher);
    }
    catcher.display();
    catcher.update();
  }


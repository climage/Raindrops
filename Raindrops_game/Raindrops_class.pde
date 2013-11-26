class Raindrops {  
  PVector loc, vel, acc;
  int d;

  Raindrops() {
    d = 25;
    loc = new PVector (random(width), -4);
    vel = new PVector (0, random(2, 7));
    acc = new PVector (0, .05);
  }
  void circle() {
    fill(86, 150, 180);
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void reset() {
    if (loc.y >height || loc.x > width) {
      loc = new PVector (random(width), -4);
      vel = new PVector (0, random(2, 7));
      acc = new PVector (0, .05);
    }
  }
  void checkCatcher(Catcher c) {
    if (loc.dist(c.loc) < d/2 + c.d/2) {
      //print("touch!!! ");
      vel.set(0, 0);
      acc.set(0, 0);
    }
  }
}


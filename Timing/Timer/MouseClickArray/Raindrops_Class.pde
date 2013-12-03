class Raindrops {  
  PVector loc, vel, acc;
  int d;

  Raindrops() {
    d = 15;
    loc = new PVector (random(width), -4);
    vel = new PVector (0, random(.1,5));
    acc = new PVector (0, .005);
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
      loc.set(random(width), -4);
      vel.set(0, random(0, 1));
      acc.set(0, .005);
    }
  }
}

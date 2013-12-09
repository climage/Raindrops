class Raindrops {  
  PVector loc, vel, acc;
  int d;

  Raindrops() {
    d = 25;
    loc = new PVector (random(width), -d);
    vel = new PVector (0, random(1, 2));
    acc = new PVector (0, .005);
  }
  void drop() {
    fill(255);
    ellipse(loc.x, loc.y, d-20, d-10);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void reset() {
    loc.set(random(width), -d);
    vel.set(0, random(1,2));
    acc.set(0,.005);
  }
  void goAway() {
    loc.set(height*2, 0); 
    vel.set(0, 0);
    acc.set(0, 0);
  }
}

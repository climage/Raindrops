class Raindrops {  
  PVector loc, vel, acc;
  int d;

  Raindrops() {
    d = 25;
    loc = new PVector (random(width), -d);
    vel = new PVector (0, random(1,2));
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
  void goAway() {
    loc.set(height*2, 0); 
    vel.set(0,0);
    acc.set(0,0);
    }
  }

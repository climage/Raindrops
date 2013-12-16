class Poison {
  PVector loc, vel, acc; 
  int d;
  
  Poison(){
    d = 15;
    loc = new PVector(random(width), -d);
    vel = new PVector(0, random(1,2));
    acc = new PVector(0,.01);
  }
  void display(){
    fill(0,255,27);
    ellipse(loc.x, loc.y, d-10, d-5);
  }
  void goDown(){
    vel.add(acc);
    loc.add(vel);
  }
  void Away(){
    loc.set(width*5,0); 
    vel.set(0, 0);
    acc.set(0, 0);
  }
}
    

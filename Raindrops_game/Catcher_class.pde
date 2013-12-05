class Catcher {
  PVector loc;
  int d;
  
  Catcher() {
    d = 50;
    loc = new PVector (mouseX, height);
  }
  void display() {
    fill(31,27,167);
    ellipse(loc.x, loc.y, d, d/2);
  }
  void update() {
    loc.set(mouseX, height - d*2);
  }
  boolean catchDrop(Raindrops drop){
    if (loc.dist(drop.loc) <d/2 + drop.d/2) {
      return true;
    }
    else { 
      return false;
    }
}
}

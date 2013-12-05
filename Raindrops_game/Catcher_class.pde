class Catcher {
  PVector loc;
  int d;
  
  Catcher() {
    d = 25;
    loc = new PVector (mouseX, height - d);
  }
  void display() {
    fill(31,27,167);
    ellipse(loc.x, loc.y, d, d);
  }
  void update() {
    loc.set(mouseX-50, height - d*2);
  }
  boolean catchdrop(Raindrop drop){
    if (loc.dist(drop.loc) <d/2 + drop.d/2) {
      return true;
    }
    else { 
      return false;
    }
}
}

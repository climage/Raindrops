class Catcher {
  PVector loc, size;
  PImage Pail;
  int d;
  Catcher() {
    d = 80;
    Pail = loadImage("APail.gif"); 
    size = new PVector (60, 80);
    loc = new PVector (mouseX, height);
  }
  void display() {
    fill(31, 27, 167);
    image (Pail, loc.x, loc.y, size.x, size.y);
  }
  void update() {
    loc.set(mouseX, height - size.y*2);
  }
  boolean catchDrop(Raindrops drop) {
    if (loc.dist(drop.loc) <d/2 + drop.d/2) {
      return true;
    }
    else { 
      return false;
    }
  }
}


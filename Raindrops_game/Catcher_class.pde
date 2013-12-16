class Catcher {
  PVector loc, size;
  PImage Pail;
  int d;
  Catcher() {
    d = 60;
    Pail = loadImage("APail.gif"); 
    size = new PVector (60, 80);
    loc = new PVector (mouseX, height);
  }
  void display() {
    image (Pail, loc.x, loc.y, size.x, size.y);
  }
  void update() {
    loc.set(mouseX, height - size.y*2);
  }
  // This boolean makes it possible for the catcher class to interact with the raindrop class and makes it possible for the score to be increased.
  boolean catchDrop(Raindrops drop) {
    if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      return true;
    }
    else { 
      return false;
    }
  }
  boolean catchpoi(Poison poi) {
    if (loc.dist(poi.loc) < d/2 + poi.d/2) {
      return true;
    }
    else {
      return false;
    }
  }
}


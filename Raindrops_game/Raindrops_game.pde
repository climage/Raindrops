//This is an array that allows multiples of the same object to be created. 
//In this instance, hundreds of raindrops are being easily made. 

Poison[] poi = new Poison[1000];
Raindrops[] drops = new Raindrops[500];
Catcher catcher;
int score;
int oldTime = 0;
int threshold = 3000;
int index;
PImage Background;
boolean run;
int deathCount = 0;
boolean death;

void setup() {
  Background = loadImage("Rain.gif");
  size(Background.width, Background.height);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  catcher = new Catcher();
  run = false;
  for (int i = 0; i <poi.length; i++){
    poi[i] = new Poison();
  }
}
void draw() {
  startbutton (width/2, height/2, 100, 100);
  catcher.display();
  if (death) {
    background(0);
    textSize(50);
    fill(255);
    text("You Lose", width/2-100, height/2);
    text("GoodBye!", width/2 - 105, height/2 +100);
  }
  else if (run == true) {
    for (int i = 0; i < index; i++) {
      drops[i].drop();
      drops[i].move();
      poi[i].display();
      poi[i].goDown();
      if (catcher.catchDrop(drops[i]) == true) {
        drops[i].goAway();
        score = score + 2; 
        threshold-=50;
      }
      if (catcher.catchPoi(poi[i] == true) { 
        poi[i].Away();
        score = score - 3;
      }
    }
    catcher.display();
    catcher.update();
    lose();
    // This code below enables a timer that drops a raindrop every 3 seconds.
    // As more raindrops are caught, due to the variable threshold, the time 
    // for each new raindrop decreases, making it drop faster. 

    if (millis()- oldTime > threshold) {
      if (index < drops.length) {
        index++;
        oldTime = millis();
      }
    }
  }  

  // If this else statement was not here, the game will run but 
  //the start button will not show up and its location would have to be guessed.

  else {
    run = false;
    background(0);
    ellipse(width/2, height/2, 100, 100);
    textSize(20);
    fill(255);
    text("Start", width/2-20, height/2+5);
  }
}

// This void makes a start button so until it is pressed and a 
// boolean run is made true, the game will not begin. 

void startbutton(int x, int y, int d, int d2) {
  ellipse(x, y, d, d2);
  background(Background);
  fill(97, 56, 185);
  textSize(50);
  text(score, 50, 100);
  fill(255,10,10);
  text(deathCount, width - 50, 100);
  fill(255, 0, 0);
  if (mouseX > width/2 - d/2 && mouseX < width/2 + d/2 && mouseY > height/2 - d2/2 && mouseY < height/2 + d2/2 && mousePressed) {
    run = true;
  }
}

void lose() {
  if (deathCount >= 5) {
    death = true;
  }
}


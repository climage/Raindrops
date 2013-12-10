//This is an array that allows multiples of the same object to be created. 
//In this instance, hundreds of raindrops are being easily made. 
Raindrops[] drops = new Raindrops[500];
Catcher catcher;
int score;
int oldTime = 0;
int threshold = 3000;
int index;
PImage Background;
boolean run;

void setup() {
  Background = loadImage("Rain.gif");
  size(Background.width, Background.height);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
  catcher = new Catcher();
  run = false;
}
void draw() {
  startbutton (width/2, height/2, 100, 100);
  catcher.display();
  if (run == true) {
    for (int i = 0; i < index; i++) {
      drops[i].drop();
      drops[i].move();
      if (catcher.catchDrop(drops[i]) == true) {
        drops[i].goAway();
        score++; 
        threshold-=50;
      }
    }
    catcher.display();
    catcher.update();
    // This code below enables a timer that drops a raindrop every 3 seconds.
    // As more raindrops are caught, due to the variable threshold, the time 
    // for each new raindrop decreases, making it drop faster. 
    if (millis()- oldTime > threshold) {
      if (index < drops.length) {
        index++;
        oldTime = millis();
      }
    }
    if (lives >= 15){
      run = false;
      background(0);
      text("You Lose", width/2, height/2);
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
  fill(97,56,185);
  textSize(50);
  text(score, 50, 100);
  fill(255,0,0);
  if (mouseX > width/2 - d/2 && mouseX < width/2 + d/2 && mouseY > height/2 - d2/2 && mouseY < height/2 + d2/2 && mousePressed) {
    run = true;
  }
}


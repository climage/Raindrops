int oldTime = 0;
int currentTime = 0;
int timeChange = 0;


void setup(){
  size(500,500);
  noStroke();
  textSize(50);
}
void draw(){
  currentTime = millis();
  timeChange = currentTime - oldTime;
  if (timeChange >= 3000){
    fill(random(255), random(255), random(255));
    ellipse(random(width), random(height), 50,50);
    oldTime = currentTime;
  }
}

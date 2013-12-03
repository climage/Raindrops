int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
void setup(){
  size(500,500);
  noStroke();
}
void draw(){
  currentTime = millis();
  timeChange = currentTime - oldTime;
  if (timeChange >= 2000){
    background(random(255), random(255), random(255));
    oldTime = currentTime;
  }
  text(millis()/1000, width/2, height/2);
}


Raindrops[] drops = new Raindrops[100];
int index = 0; 

void setup() {
  size(500, 500);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrops();
  }
}
void draw() {
  background(0);
  for(int i = 0; i <= index; i++){
    drops[i].circle();
    drops[i].move();
  }
}
void mousePressed(){
  if(index < drops.length - 1){
    index++;
  }
}

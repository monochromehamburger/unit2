//Tim Yang
//Checkpoint 1
int y;
void setup(){
  size(600, 600);
  y=0;
}

void draw(){'
  background(255);
  strokeWeight(5);
  ellipse(300, y, 300, 300);
  y++;
  if(y==600){
    y=0;
  }
}

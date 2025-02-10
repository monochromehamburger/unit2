//Tim Yang
//Checkpoint 6
int y;
int y2;
void setup(){
  size(600, 600);
  y=0;
  y2=600;
}

void draw(){'
  background(255);
  strokeWeight(5);
  ellipse(150, y, 200, 200);
  ellipse(450, y2, 200, 200);
  y++;
  y2--;
  if(y==600){
    y=0;
    y2=600;
  }
}

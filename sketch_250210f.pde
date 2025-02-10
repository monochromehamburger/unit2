//Tim Yang
//Checkpoint 4
int x;
int y;
void setup(){
  size(600, 600);
  x=0;
  y=0;
}

void draw(){'
  background(255);
  strokeWeight(5);
  ellipse(x, y, 300, 300);
  x+=1;
  y+=1;
  if(x==600){
    x=0;
    y=0;
  }
}

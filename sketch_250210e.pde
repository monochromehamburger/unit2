//Tim Yang
//Checkpoint 3
int x;
void setup(){
  size(600, 600);
  x=0;
}

void draw(){'
  background(255);
  strokeWeight(5);
  ellipse(x, 300, 300, 300);
  x+=1;
  if(x==600){
    x=0;
  }
}

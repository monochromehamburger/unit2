//Tim Yang
//Checkpoint 5
int x;
int size;
void setup(){
  size(600, 600);
  x=0;
  size=0;
}

void draw(){'
  background(255);
  strokeWeight(5);
  ellipse(x, 300, size, size);
  x+=10;
  size+=2;
  if(x==600){
    x=0;
    size=0;
  }
}

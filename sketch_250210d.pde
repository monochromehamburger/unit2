//Tim Yang
//Checkpoint 2
int size;
void setup(){
  size(600, 600);
  size=0;
}

void draw(){'
  background(255);
  strokeWeight(5);
  ellipse(300, 300, size, size);
  size+=2;
  if(size==850){
    size=0;
  }
}

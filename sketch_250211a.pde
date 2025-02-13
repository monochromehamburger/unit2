//Tim Yang
//Unit 2 Project
int creeperX=0;
int creeperY=800;
float angle=0;
float vRotate=0.05;
int cloudX=500;
int cloudY=200;
int cloudX2=0;
int cloudY2=0;
float treeX=0;

void setup(){
  size(2000, 1500);
}

void draw(){
  background(91,135,49);
  creeperX+=3;
  cloudX--;
  cloudX2--;
  treeX-=1.5;
  angle+=vRotate;
  if(angle>=0.3){
    vRotate=-0.05;
  }
  if(angle<=-0.3){
    vRotate=0.05;
  }
  if(creeperX>2200){
    creeperX=-200;
  }
  if(cloudX<=-200){
    cloudX=2200;
    cloudY=int(random(100, 400));
  }
  if(cloudX2<=-200){
    cloudX2=2200;
    cloudY2=int(random(100, 400));
  }
  if(treeX<=-200){
    treeX=2200;
  }
    
  cloud(cloudX, cloudY);
  cloud(cloudX2, cloudY2);
  tree(treeX, 700);
  creeper(creeperX, creeperY);
}
void tree(float x, int y){
  fill(46, 5, 5);
  rect(x, y, 75, 200);
  fill(15, 80, 23);
  rect(x-50, y-250, 175, 250);
}
void cloud(int x, int y){
  noStroke();
  fill(255);
  rect(x, y, 150, 50);
  rect(x-50, y+50, 250, 50);
  rect(x, y+100, 150, 50);
  stroke(0);
}
void creeper(int x, int y){
  //body
  rect(x, y, 200, 200);
  rect(x+25, y+200, 150, 300);
  for(int i=0;i<6;i++){
    for(int j=0;j<12;j++){
      fill(((i+j+15)*13572*i+5423*j)%100, (((i+j)*1364)*i+6525*j)%125+130, ((i+j)*2456*i+1436*j)%100);
      rect(i*25+x+25, j*25+y+200, 25, 25);
    }
  }
  //legs
  fill(13,181,13);
  pushMatrix();
  translate(x+100, y+450);
  rotate(angle);
  rect(-125, 25, 100, 100);
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      fill(((i+j+165)*12372*i+1343*j)%100, (((i+j)*6432)*i+654*j)%125+130, ((i+j)*972*i+75*j)%100);
      rect(i*25-125, j*25+25, 25, 25);
    }
  }
  rect(25, 25, 100, 100);
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      fill(((i+j+165)*12372*i+1343*j)%100, (((i+j)*6432)*i+654*j)%125+130, ((i+j)*972*i+75*j)%100);
      rect(i*25+25, j*25+25, 25, 25);
    }
  }
  popMatrix();
  
  pushMatrix();
  translate(x+100, y+450);
  rotate(-angle);
  rect(-125, 25, 100, 100);
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      fill(((i+j+165)*12372*i+1343*j)%100, (((i+j)*6432)*i+654*j)%125+130, ((i+j)*972*i+75*j)%100);
      rect(i*25-125, j*25+25, 25, 25);
    }
  }
  rect(25, 25, 100, 100);
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      fill(((i+j+165)*12372*i+1343*j)%100, (((i+j)*6432)*i+654*j)%125+130, ((i+j)*972*i+75*j)%100);
      rect(i*25+25, j*25+25, 25, 25);
    }
  }
  popMatrix();
  for(int i=0;i<8;i++){
    for(int j=0;j<8;j++){
      fill(((i+j+165)*12372*i+1343*j)%100, (((i+j)*6432)*i+654*j)%125+130, ((i+j)*972*i+75*j)%100);
      rect(i*25+x, j*25+y, 25, 25);
    }
  }
  //eyes
  fill(0);
  rect(x+175, y+25, 25, 50);
}

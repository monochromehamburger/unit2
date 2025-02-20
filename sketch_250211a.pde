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
int cloudX3=1200;
int cloudY3=250;
int cloudX4=1800;
int cloudY4=100;
float sunY=0;
float skyColor=0;
float vSkyColor=0.2;
float mountainX=0;
float mountainX2=2200;
void setup(){
  size(2000, 1500);
}

void draw(){
  creeperX+=3;
  cloudX--;
  cloudX2--;
  cloudX3--;
  cloudX4--;
  sunY++;
  treeX-=1.5;
  skyColor+=vSkyColor;
  angle+=vRotate;
  mountainX-=0.6;
  mountainX2-=0.6;
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
  if(cloudX3<=-200){
    cloudX3=2200;
    cloudY3=int(random(100, 400));
  }
  if(cloudX4<=-200){
    cloudX4=2200;
    cloudY4=int(random(100, 400));
  }
  if(treeX<=-700){
    treeX=2200;
  }
  if(sunY>=1500){
    sunY=-600;
  }
  if(skyColor>210){
    vSkyColor=-0.2;
  }
  if(skyColor<=0){
    vSkyColor=0.2;
  }
  if(mountainX<=-2200){
    mountainX=2200;
  }
  if(mountainX2<=-2200){
    mountainX2=2200;
  }
  fill(max(0,54-skyColor),max(0,199-skyColor),max(0,242-skyColor));
  rect(0,0, 2000, 700);
  fill(239, 240, 102);
  rect(800, sunY, 400, 400);
  fill(200, 200, 200);
  mountain(mountainX, 500);
  mountain2(mountainX2, 500);
  fill(91,135,49);
  rect(0, 700, 2000, 1300);
  cloud(cloudX, cloudY);
  cloud(cloudX2, cloudY2);          
  cloud(cloudX3, cloudY3);
  cloud(cloudX4, cloudY4);
  tree(treeX, 700);   
  tree(treeX+500, 800);
  creeper(creeperX, creeperY);
  
}
void mountain(float x, int y){
  for(int i=0;i<11;i++){
    triangle(x+i*200, y, x+200+i*200, y+300, x-200+i*200, y+300);
  }
}
void mountain2(float x, int y){
  for(int i=0;i<11;i++){
    triangle(x+i*200, y, x+200+i*200, y+300, x-200+i*200, y+300);
  }
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

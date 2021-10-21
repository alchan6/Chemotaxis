Walker[] ferb;
void setup(){
  background(0);
  size(500,500);
  ferb = new Walker[150];
  for(int i = 0; i < ferb.length; i++){
    ferb[i] = new Walker((int)(Math.random()*500),(int)(Math.random()*500));
  }
}

void draw(){
  background(0);
  for(int i = 0; i < ferb.length;i++){
   ferb[i].show();
   ferb[i].move();
   ferb[i].touch();
  }
}

class Walker{
  int myX,myY,myColor;
  
  Walker(int x, int y){
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void move(){
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show(){
    fill(myColor);
    ellipse(myX,myY,15,15);
    if(myX < 0 || myX > 500){
      myX = 250;
    }
    if(myY < 0 || myY > 500){
      myY = 250;
    }
  }
  void touch(){
   if(dist(myX, myY, mouseX, mouseY) <15 ){
     myColor = 255;
   }
  }
  
}

Walker [] bob = new Walker[100];
void setup(){
  size(400,400);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Walker((int)(Math.random()*width), (int)(Math.random()*height));
  }
}

void draw(){
  background(154);
  for(int i = 0; i < bob.length; i++){
    bob[i].walk();
    bob[i].show();
  }
}

class Walker{
  int myX, myY, myColor;
  Walker(int x, int y){
    myX = x;
    myY = y;
    myColor = color(255,0,0);
  }
  void walk(){
   if (mouseX > myX){
    myX = myX + (int)(Math.random()*5)-1;
   }
   else{
    myX = myX + (int)(Math.random()*5)-3;
   }
   if (mouseY > myY){
    myY = myY + (int)(Math.random()*5)-1;
   }
   else{
    myY = myY + (int)(Math.random()*5)-3;
   }
   if(mousePressed){
     myX = (int)(Math.random()*width);
     myY = (int)(Math.random()*height);
   }
  }
  void show(){
    fill(myColor);
    ellipse(myX,myY,20,20);
  }
}
